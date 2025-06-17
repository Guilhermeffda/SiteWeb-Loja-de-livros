import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="payment"

//controla a exibição de campos adicionais em um formulário de pagamento.

//verifica o tipo de pagamento selecionado e mostra ou esconde campos extras conforme necessário.
export default class extends Controller {
  static targets = [ "selection", "additionalFields" ]

  initialize(){
    this.showAdditionalFields()
  }

  showAdditionalFields(){
    let Selection = this.selectionTarget.value

    for (let fields of this.additionalFieldsTargets){
      fields.disabled = fields.hidden = (fields.dataset.type != Selection)
    }
  }
}
