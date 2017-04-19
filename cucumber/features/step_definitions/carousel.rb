Dado(/^que eu acesse o exemplo de carrossel$/) do
  visit '/bootstrap/bootstrap_carousel.asp'
end

Quando(/^eu clico no botão para passar a foto para esquerda$/) do
  page.find(:css, ".sr-only").click
end

Entao(/^eu valido o texto da foto$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
