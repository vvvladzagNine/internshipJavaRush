<#import "parts/base.ftl" as b>
<#import "parts/pager.ftl" as p>
<@b.page>

<div class="container mt-15">
    <div class="row">
        <div class="col"></div>
        <div class="col-8"><h2 class="text-center mt-10">Компьютерные комплектующие</h2></div>
        <div class="col"></div>
    </div>

    <div class="row mt-3">
        <div class="col"></div>
        <div class="col-9"><div class="form-row">
            <div class="form-group col-md-12">
                <form method="get" action="/" class="form-inline">
                    <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Поиск по названию" />
                    <button type="submit" class="btn btn-primary ml-2">Поиск</button>
                    <label class="form-check-label ml-3" for="exampleRadios1">Все</label>
                    <input class="form-check-input ml-1" type="radio" name="exampleRadios" id="exampleRadios1" value="all"<#if radio=="all">checked</#if>>
                    <label class="form-check-label ml-3" for="exampleRadios2">Необходимые</label>
                    <input class="form-check-input ml-1" type="radio" name="exampleRadios" id="exampleRadios2" value="yes"<#if radio=="yes">checked</#if>>
                    <label class="form-check-label ml-3" for="exampleRadios3">Опциональные</label>
                    <input class="form-check-input ml-1" type="radio" name="exampleRadios" id="exampleRadios3" value="no"<#if radio=="no">checked</#if>>
                </form>
            </div>
        </div>
        </div>
        <div class="col"></div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col-9"><#include "parts/partEdit.ftl"/></div>
        <div class="col"></div>
    </div>
    <div class="row mt-3">
        <div class="col"></div>
        <div class="col-9">
            <div class="list-group-6">
                <#include "parts/partList.ftl"/>
            </div>
        </div>
        <div class="col"></div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col-8"><h2 class="text-center mt-10">Можно собрать ${comps} компьютеров</h2></div>
        <div class="col"></div>
    </div>
</div>
</@b.page>