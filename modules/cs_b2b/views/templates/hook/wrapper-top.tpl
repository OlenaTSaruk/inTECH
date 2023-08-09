<div id="csb2b-sharecart">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8 col-lg-6 mx-auto">
                <div class="alert alert-warning">
                    <h2 class="alert-title">{l s='Hand over this cart to a customer' mod='cs_b2b'}</h2>
                    <form id="csb2b-sharecart-form" method="POST" action="{$actionUrl}">
                        <div class="form-group">
                            <div class="input-group">
                                <input name="csb2b_customersearch" type="text" value="" class="form-control" placeholder="{l s='Search for a customer' mod='cs_b2b'}" required="required" />
                                <span class="input-group-btn">
                                    <input type="submit" class="btn" name="csb2b_customersearch_submit" value="{l s='Search' mod='cs_b2b'}" />
                                    <input type="hidden" name="action" value="search" />
                                </span>
                            </div>
                        </div>
                    </form>
                    <div id="csb2b-sharecart-results">
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>