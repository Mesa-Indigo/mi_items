
local getsource = function()
    local source = require 'data.newspaper'
    if not source then lib.print.error('No source from data/newspaper.lua')end
    if source then
        return source
    end
end

exports('newspaper', function()
    local hit = getsource()
    lib.print.info(hit['Story_1'])
    lib.registerContext({
        id = 'news_menu',
        title = 'Daily Globe News',
        options = {
          {
            title = hit['Story_1'].label,
            description = hit['Story_1'].description,
            icon = 'newspaper', onSelect = function()
                lib.alertDialog({
                    header = hit['Story_1'].header,
                    content = hit['Story_1'].text,
                    centered = true, size = 'lg',
                    overflow = true, labels = {
                        confirm = locale('itm_newsp_close')
                    }
                })
              end,
          },
          {
            title = hit['Story_2'].label,
            description = hit['Story_2'].description,
            icon = 'newspaper', onSelect = function()
                lib.alertDialog({
                    header = hit['Story_2'].header,
                    content = hit['Story_2'].text,
                    centered = true, size = 'lg',
                    overflow = true, labels = {
                        confirm = locale('itm_newsp_close')
                    }
                })
              end,
          },
          {
            title = hit['Story_3'].label,
            description = hit['Story_3'].description,
            icon = 'newspaper', onSelect = function()
                lib.alertDialog({
                    header = hit['Story_3'].header,
                    content = hit['Story_3'].text,
                    centered = true, size = 'lg',
                    overflow = true, labels = {
                        confirm = locale('itm_newsp_close')
                    }
                })
              end,
          },
        }
      })

      lib.showContext('news_menu')
end)