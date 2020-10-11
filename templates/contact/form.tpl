<section id="contact-form" class="contact">
  <h1 class="contact__headline headline">Kontakt</h1>
  <form class="contact__form" action="{PAGEURL}#contact-form" method="post" enctype="multipart/form-data">
    {IF({HAS_VALIDATION_ERRORS})}
      <div class="message error">{VAR:head2}</div>
    {ENDIF}
		{IF("{VAR:REDIRECT_STATUS}" == 200)}
			<div class="overlay-message">
				<article class="overlay-message__article">
					<h2 class="overlay-message__headline headline">{VAR:head3}</h2>
					<p class="overlay-message__text">{VAR:head4}</p>
				</article>
				<button class="overlay__close button button--icon" type="button" name="button" aria-label="Schliessen">{INCLUDE:PATHTOWEBROOT.'dist/img/icons/close.svg'}</button>
			</div>
		{ENDIF}

    <!-- <header class="contact__header"> -->
      <div class="contact__item{IF(!{VALIDATES:contact_firstname})} error{ENDIF}">
        <label class="contact__label" for="contact_firstname" data-required="true">{ALIAS:contact_firstname}</label>
        <input class="contact__input" id="contact_firstname" type="text" name="contact_firstname" value="{VAR:contact_firstname}" placeholder="Max">
      </div>
			{LOOP VALIDATIONERRORS(contact_firstname)}
			<div class="error-message">
				{SWITCH("{VAR:rule}")}
				{CASE("not-empty")}
				{ALIAS:contact_firstname} ist ein Pflichtfeld
				{BREAK}
				{ENDSWITCH}
			</div>
			{ENDLOOP VALIDATIONERRORS}

      <div class="contact__item">
        <label class="contact__label" for="contact_lastname">{ALIAS:contact_lastname}</label>
        <input class="contact__input" id="contact_lastname" type="text" name="contact_lastname" value="{VAR:contact_lastname}" placeholder="Muster">
      </div>

      <div class="contact__item{IF(!{VALIDATES:contact_email})} error{ENDIF}">
        <label class="contact__label" for="contact_email" data-required="true">{ALIAS:contact_email}</label>
        <input class="contact__input" id="contact_email" type="text" name="contact_email" value="{VAR:contact_email}" placeholder="m.muster@example.com">
      </div>
			{LOOP VALIDATIONERRORS(contact_email)}
			<div class="error-message">
				{SWITCH("{VAR:rule}")}
				{CASE("not-empty")}
				{ALIAS:contact_email} ist ein Pflichtfeld
				{BREAK}
				{CASE("valid-email")}
				Ungültige E-Mail-Adresse
				{BREAK}
				{ENDSWITCH}
			</div>
			{ENDLOOP VALIDATIONERRORS}

      <div class="contact__item">
        <label class="contact__label" for="contact_phone">{ALIAS:contact_phone}</label>
        <input class="contact__input" id="contact_phone" type="text" name="contact_phone" value="{VAR:contact_phone}" placeholder="+49 157 89 123 456">
      </div>
    <!-- </header> -->

    <!-- <main class="contact__main"> -->
      <div class="contact__item{IF(!{VALIDATES:contact_subject})} error{ENDIF}">
        <label class="contact__label" for="contact_subject" data-required="true">{ALIAS:contact_subject}</label>
        <input class="contact__input" id="contact_subject" type="text" name="contact_subject" value="{VAR:contact_subject}" placeholder="Kontakt Anfrage">
      </div>
			{LOOP VALIDATIONERRORS(contact_subject)}
			<div class="error-message">
				{SWITCH("{VAR:rule}")}
				{CASE("not-empty")}
				{ALIAS:contact_subject} ist ein Pflichtfeld
				{BREAK}
				{ENDSWITCH}
			</div>
			{ENDLOOP VALIDATIONERRORS}

      <div class="contact__item{IF(!{VALIDATES:contact_text})} error{ENDIF}">
        <label class="contact__label" for="contact_text" data-required="true">{ALIAS:contact_text}</label>
        <textarea class="contact__textarea" id="contact_text" type="text-area" name="contact_text" value="" rows="6">{VAR:contact_text}</textarea>
      </div>
			<div class="contact__note">
				<b>*</b> Pflichtfelder
			</div>
			{LOOP VALIDATIONERRORS(contact_text)}
			<div class="error-message">
				{SWITCH("{VAR:rule}")}
				{CASE("not-empty")}
				{ALIAS:contact_text} ist ein Pflichtfeld
				{BREAK}
				{ENDSWITCH}
			</div>
			{ENDLOOP VALIDATIONERRORS}
    <!-- </main> -->

    <footer class="contact__footer">
      <div class="contact__confirm{IF(!{VALIDATES:contact_confirm})} error{ENDIF}">
        <div class="checkbox-box">
          <input class="contact__checkbox" id="contact_confirm" type="checkbox" name="contact_confirm" value="confirm">
          <label class="box" for="contact_confirm" aria-hidden="true">
            <svg id="cross" width="100" height="100" viewBox="0 0 100 100">
        		  <path d="M20,20 L80,80 M80,20 L20,80"></path>
        	  </svg>
          </label>
        </div>
        <label class="contact__label" for="contact_confirm">{VAR:head1}</label>
			</div>
				{LOOP VALIDATIONERRORS(contact_confirm)}
				<div class="error-message">
					{SWITCH("{VAR:rule}")}
					{CASE("confirm")}
					Bitte stimmen Sie den AGB's zu
					{BREAK}
					{ENDSWITCH}
				</div>
				{ENDLOOP VALIDATIONERRORS}
      <button class="contact__button button" type="submit" name="Submit">Senden</button>
    </footer>
  </form>
</section>
