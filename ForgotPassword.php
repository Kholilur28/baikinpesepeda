<?php
class ForgotPassword {

protected $email;
protected $newEmail;

private $availableEmail = "Baikinsepeda1@gmail.com";

public function __construct($email, $newEmail) {
$this->email = $email;
$this->newEmail = $newEmail;
}

public function send() {
if ($this->email === $this->availableEmail) {
echo "Login Success";
} else {
echo "Check Your Email To Reset Your Password";
}
}
}

$email = "Baikinsepeda1@gmail.com";
$newEmail = "Kholilur28@gmail.com";

$forgotPassword = new ForgotPassword($email, $newEmail);
$forgotPassword->send();