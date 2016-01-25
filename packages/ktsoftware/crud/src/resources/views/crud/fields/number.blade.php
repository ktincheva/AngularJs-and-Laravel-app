<!-- number input -->
  <div class="form-group">
    <label>{{ $field['label'] }}</label>
    <input
    	type="number"
    	class="form-control text-right"

    	@foreach ($field as $attribute => $value)
    		{{ $attribute }}="{{ $value }}"
    	@endforeach
    	>
  </div>