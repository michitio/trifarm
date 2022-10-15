// format point string

var hiddenInput = document.querySelector('#price-hidden');

function saveValue(e) {
    var strValue = e.target.value;
    strValue = strValue.replace('.', '');
    hiddenInput.value = strValue;
}

function formatStringPrice(e) {

    var strValue = e.target.value;
    strValue = strValue.replace('.', '');

    var intValue = parseInt(strValue);
    e.target.value = intValue.toLocaleString();
    if (isNaN(intValue))
        intValue = 0;
    else if (intValue.toString().length != countString(strValue))
        intValue = parseInt(hiddenInput.value);

    e.target.value = intValue.toLocaleString();
    hiddenInput.value = intValue;

    // console.log(e.target.value);
    // console.log(hiddenInput.value);
}

function countString(str) {
    for (let i = 0; i < str.length; i++) {
        if (str[i] != "0") {
            // console.log(str.length - i);
            return str.length - i;
        }
    }
}