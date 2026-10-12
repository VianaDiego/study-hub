function compute()
{
  let p = document.getElementById("principal").value;
  let r = document.getElementById("rate").value;
  let y = document.getElementById("years").value;
  let inter = (1 + r/100) ** y;
  let amount = parseFloat(inter) * parseInt(p);
  amount = parseFloat(amount).toFixed(2);
  let result = document.getElementById("result");
  let totalFormated = parseFloat(amount).toLocaleString('pt-BR', {style: 'currency', currency: 'BRL'});

  result.innerHTML = "If you deposite" + "<mark> R$ " + p +"</mark>" + ",\<br\> at an interest rate of " + "<mark>" + r + "%" + "</mark>" + "\<br\> You will receive an amount of " + "<mark> R$ " + amount + "</mark>" + "<br> at the end!";
}

function updateRate()
{
  let rateval = document.getElementById("rate").value;
  document.getElementById("rate_val").innerText = rateval;
}