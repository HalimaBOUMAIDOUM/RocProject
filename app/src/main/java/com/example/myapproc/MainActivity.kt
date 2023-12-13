package com.example.myapproc

import android.bluetooth.BluetoothAdapter
import android.bluetooth.BluetoothDevice
import android.os.Build
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import androidx.annotation.RequiresApi
import androidx.appcompat.app.AppCompatActivity
import com.android.volley.Request
import com.android.volley.RequestQueue
import com.android.volley.Response
import com.android.volley.VolleyError
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import org.json.JSONException
import org.json.JSONObject

class MainActivity : AppCompatActivity(), View.OnClickListener {

    private lateinit var editTextEmail: EditText
    private lateinit var editTextName: EditText
    private lateinit var editTextPrenom: EditText
    private lateinit var buttonRegister: Button

    @RequiresApi(Build.VERSION_CODES.M)
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        editTextEmail = findViewById(R.id.email)
        editTextName = findViewById(R.id.nom)
        editTextPrenom = findViewById(R.id.prenom)
        buttonRegister = findViewById(R.id.loginButton)

        buttonRegister.setOnClickListener(this)
    }

    @RequiresApi(Build.VERSION_CODES.M)
    private fun getRealMacAddress(): String {
        val bluetoothAdapter = BluetoothAdapter.getDefaultAdapter()
        var realMacAddress = "N/A"

        if (bluetoothAdapter != null) {
            if (bluetoothAdapter.isEnabled) {
                val bluetoothDevice: BluetoothDevice? = bluetoothAdapter.bluetoothLeAdvertiser
                    ?.bluetoothManager?.adapter?.getRemoteDevice(bluetoothAdapter.address)

                if (bluetoothDevice != null) {
                    realMacAddress = bluetoothDevice.address
                }
            }
        }

        return realMacAddress
    }

    private fun registerUser() {
        val nom = editTextName.text.toString().trim()
        val prenom = editTextPrenom.text.toString().trim()
        val email = editTextEmail.text.toString().trim()

        // Vérifiez que les champs ne sont pas vides
        if (nom.isEmpty() || prenom.isEmpty() || email.isEmpty()) {
            // Affichez un message d'erreur ou secouez les champs de saisie, etc.
            return
        }

        // Obtenez l'adresse MAC réelle du téléphone
        val macAddress = getRealMacAddress()

        val url = "http://192.168.230.1/GestionPresenceProject/V1/registerEtudiant.php"

        val stringRequest = object : StringRequest(Request.Method.POST, url,
            Response.Listener { response ->
                try {
                    val jsonObject = JSONObject(response)
                    val message = jsonObject.getString("message")
                    Toast.makeText(applicationContext, message, Toast.LENGTH_LONG).show()
                } catch (e: JSONException) {
                    e.printStackTrace()
                    Toast.makeText(applicationContext, "Erreur JSON : " + e.message, Toast.LENGTH_LONG).show()
                }
            },
            Response.ErrorListener { error ->
                Toast.makeText(applicationContext, error.message, Toast.LENGTH_LONG).show()
            }) {
            override fun getParams(): Map<String, String> {
                val params = HashMap<String, String>()
                params["nom"] = nom
                params["prenom"] = prenom
                params["email"] = email
                params["mac_address"] = macAddress
                return params
            }
        }

        val reqQueue: RequestQueue = Volley.newRequestQueue(this)
        reqQueue.add(stringRequest)
    }

    override fun onClick(view: View?) {
        if (view == buttonRegister) {
            registerUser()
        }
    }
}