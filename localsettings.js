// Reference:
//   https://github.com/wikimedia/parsoid/blob/v0.5.3/localsettings.js.example

exports.setup = cfg => {
  cfg.setMwApi({
    domain: 'femiwiki.com',
    prefix: 'femiwiki.com',
    uri: 'https://femiwiki.com/api.php',
  })
  cfg.loadWMF = false
  cfg.useSelser = true
  cfg.serverInterface = '0.0.0.0'
}
