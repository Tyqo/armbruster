<?php
namespace TS;

use Contentomat\Model;

class Contact extends Model {

	protected $validationRules = [
		'contact_firstname' => [
			'not-empty' => '/.+/'
		],
		'contact_email' => [
			'not-empty' => '/.+/',
			'valid-email' => '/@/',
		],
		'contact_text' => [
			'not-empty' => '/.+/'
		],
		'contact_subject' => [
			'not-empty' => '/.+/'
		],
		'contact_confirm' => [
			'confirm' => '/confirm/'
		]
	];


	public function init() {
		$this->tableName = 'ts_contacts';
	}
}
?>
