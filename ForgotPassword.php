<?php
class ForgotPassword {

protected $user;
protected $newuser;

private $availableuser = "Baikinsepeda1";

public function __construct($user, $newuser) {
$this->user = $user;
$this->newuser = $newuser;
}

public function send() {
if ($this->user === $this->availableuser) {
echo "Login Success";
} else {
echo "Check Your user To Reset Your Password";
}
}
}

$email = "Baikinsepeda1";
$newEmail = "Kholilur28";

$forgotPassword = new ForgotPassword($user, $newuser);
$forgotPassword->send();
