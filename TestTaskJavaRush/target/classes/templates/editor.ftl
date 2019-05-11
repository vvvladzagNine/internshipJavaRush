<#import "parts/base.ftl" as b>
<@b.page>

<div class="container mt-15">
    <div class="row">
        <div class="col"></div>
        <div class="col-9">
            <form method="post">
                <div class="form-group">
                    <input type="text" class="form-control"
                           name="name" placeholder="Наименование детали" value="${part.name}" />
                </div>
                <div class="form-group">
                    <input type="text" class="form-control"
                           value="${part.amount}" name="amount" placeholder="Количество" />
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input ml-1" type="checkbox" id="inlineCheckbox1" <#if part.requirement>checked="checked"</#if>  name="isReq" value="req">
                    <label class="form-check-label" for="inlineCheckbox1">Необходим для сборки пк</label>
                </div>
                <div class="form-group mt-1">
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </div>
            </form>
        </div>
        <div class="col"></div>
    </div>
</div>
</@b.page>