<#import "pager.ftl" as p>

<#if radios??>radios</#if>
<@p.pager url page radio/>
    <ul class="list-group list-group-horizontal-xl">
        <li class="list-group-item ">
            <div class="container">
                <div class="row">
                    <div class="col">
                        Наименование
                    </div>
                    <div class="col">
                        Необходимость
                    </div>
                    <div class="col">
                        Количество
                    </div>
                    <div class="col">
                        Операции
                    </div>
                </div>
            </div>
        </li>
    <#list page.content as part>
        <li class="list-group-item ">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <span class="text-primary">${part.name}</span>
                    </div>
                    <div class="col">
                        <span class="text-dark"><#if part.requirement>Да<#else>Нет</#if></span>
                    </div>
                    <div class="col">
                        <span class="text-secondary">${part.amount}</span>
                    </div>
                    <div class="col">
                        <form method="post" action="/" class="form-inline">
                            <a class="btn btn-primary" href="/${part.id}" role="button">Изменить</a>
                            <input type="hidden" name="id" value="${part.id}" />
                            <button class="btn btn-secondary ml-3" role="button">Х</button>
                        </form>
                    </div>
                </div>
            </div>
        </li>
    <#else>
    no parts
    </#list>
    </ul>


<@p.pager url page radio/>