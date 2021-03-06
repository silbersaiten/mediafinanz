{**
* 2015 Mediafinanz
*
* NOTICE OF LICENSE
*
* This source file is subject to the Open Software License (OSL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/osl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to info@easymarketing.de so we can send you a copy immediately.
*
* @author    silbersaiten www.silbersaiten.de <info@silbersaiten.de>
* @copyright 2015 Mediafinanz
* @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
*}
<div class="panel">
    <div class="panel-heading">
        <i class="icon-envelope"></i>
        {l s='Mediafinanz' mod='mediafinanz'}
    </div>
    {if (isset($claim) && $claim)}
        <div class="row">
            <div class="col-lg-2">
                {l s='File number' mod='mediafinanz'}: {$claim->file_number|escape:'html':'UTF-8'}
            </div>
            <div class="col-lg-8">
                {$claim->status_text|escape:'mail':'UTF-8'}
            </div>
            <div class="col-lg-2">
                <a href="{$link->getAdminLink('AdminInkasso')|escape:'html':'UTF-8'}&amp;id_mf_claim={$claim->id|escape:'html':'UTF-8'}&amp;viewmf_claims" class="btn btn-default">
                    {l s='View claim' mod='mediafinanz'}
                </a>
            </div>
        </div>
    {elseif (isset($id_order) && $id_order)}
        <a href="{$link->getAdminLink('AdminInkasso')|escape:'html':'UTF-8'}&amp;order_list[]={$id_order|escape:'html':'UTF-8'}&amp;createclaims=true" class="btn btn-default">
            {l s='Create claim' mod='mediafinanz'}
        </a>
    {/if}
</div>