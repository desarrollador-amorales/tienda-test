<?php 
    print_r($_GET);

    $ClientID="Ad7viq2dL6bbvnnvA5QT2BG2iRDSEACSml5CVrC8sY0bNYUR5McegWGgISI9LF4YhQw5s3goA4LpLiTI";
    $Secret="EBJYjK3CkAZ0svAGqJ--6U8Uy9-lY9MRkmSOfe5DT3Pk-ejSCNHWxvPWvVdR--romDy6rWHksKOESSTG";


                // https://developer.paypal.com/docs/api/get-an-access-token-curl/
                $Login= curl_init("https://api-m.sandbox.paypal.com/v1/oauth2/token"); //Mecanismo de solicitud de Datos
                curl_setopt($Login,CURLOPT_RETURNTRANSFER, TRUE);
                curl_setopt($Login,CURLOPT_USERPWD,$ClientID.":".$Secret); 
                curl_setopt($Login,CURLOPT_POSTFIELDS, "grant_type=client_credentials"); //Solicitar toda la informacion que utiliza el ClientID y el secret
                $Respuesta=curl_exec($Login); //Ejecutar todos los procedimientos anteriores

                //print_r($Respuesta);//Devuelve un formato json con el access token
                $objRespuesta=json_decode($Respuesta);//Decodificar el json en un objeto 
                $accessToken=$objRespuesta->access_token; //obtencion del token unicamente
                print_r($accessToken);
                
                /**
                 * Bloque de Codigo que sirve  */
                $venta = curl_init("https://api.sandbox.paypal.com/v1/payments/payment/".$_GET['paymentID']);
                curl_setopt($venta,CURLOPT_HTTPHEADER,array("Content-Type: application/json","Authorization: Bearer ".$accessToken));
                $respuestaVenta=curl_exec($venta);
                $objResponseVenta = json_decode($respuestaVenta);
                print_r($objResponseVenta); 


?>