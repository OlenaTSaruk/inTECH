<div id="csb2b-aap-modal" class="modal fade" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{l s='Ask your account manager about this product' mod='cs_b2b'}</h5>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}"></button>
            </div>
            <div class="modal-body">
                <form id="csb2b-aap-form" action="{$actionUrl}" method="POST">
                    <div class="form-group">
                        <label for="csb2b-aap-field-message">{l s='Your question' mod='cs_b2b'}</label>
                        <textarea id="csb2b-aap-field-message" name="csb2bAAPMessage" class="form-control"></textarea>
                    </div>
                    <div class="form-group text-end">
                        <input type="submit" class="btn" name="csb2bAAPSubmit" value="{l s='Send' mod='cs_b2b'}" />
                    </div>
                    <input type="hidden" name="csb2bAAPProductId" value="{$id_product}" />
                </form>
            </div>
        </div>
    </div>
</div>