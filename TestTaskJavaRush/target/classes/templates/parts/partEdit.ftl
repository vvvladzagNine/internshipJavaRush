<a class="btn btn-secondary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
    Добавить
</a>
<div class="collapse" id="collapseExample">
    <div class="form-group mt-3">
        <form method="post">
            <div class="form-group">
                <input type="text" class="form-control"
                        name="name" placeholder="Наименование детали" />
            </div>
            <div class="form-group">
                <input type="text" class="form-control"
                       value="" name="amount" placeholder="Количество" />
            </div>

            <div class="form-check form-check-inline">
                <input class="form-check-input ml-1" type="checkbox" id="inlineCheckbox1"  name="isReq" value="req">
                <label class="form-check-label" for="inlineCheckbox1">Необходимость</label>

            </div>
            <div class="form-group mt-1">
                <button type="submit" class="btn btn-primary">Добавить деталь</button>
            </div>
        </form>
    </div>
</div>