<div id="csb2b-customermanager" class="block">
    <h4 class="block-title d-none d-md-block">{l s='Your customer manager' mod='cs_b2b'}</h4>
    <div class="block-title d-md-none" data-target="#csb2b-customermanager-collapse" data-toggle="collapse" aria-expanded="false" aria-controls="csb2b-customermanager-collapse" role="button">
        <span>{l s='Your customer manager' mod='cs_b2b'}</span>
        <span class="navbar-toggler collapse-icons">
            <i class="fas fa-chevron-down add"></i>
            <i class="fas fa-chevron-up remove"></i>
        </span>
    </div>
    <ul id="csb2b-customermanager-collapse" class="{*collapse block-collapse *}list-group list-group-flush">
        <li class="list-group-item"><small>{l s='Name and surname' mod='cs_b2b'}</small><br />{$firstname} {$lastname}</li>
        {if $phone}<li class="list-group-item"><small>{l s='Phone' mod='cs_b2b'}</small><br /><a href="tel:{$phone|regex_replace:'/[^0-9\+]/':''}">{$phone}</a></li>{/if}
        {if $email}<li class="list-group-item"><small>{l s='E-mail' mod='cs_b2b'}</small><br /><a href="mailto:{$email}">{$email}</a></li>{/if}
    </ul>
</div>