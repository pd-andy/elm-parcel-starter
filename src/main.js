import { Elm } from './elm/Main.elm'

const flags = {}
const node = document.querySelector('[data-elm]')

Elm.Main.init({ node, flags })
