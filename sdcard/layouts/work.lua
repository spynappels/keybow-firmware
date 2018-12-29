require "keybow"
require "snippets/win_snippets"

function setup()
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 255, 255, 0) -- Yellow
    keybow.set_pixel(1, 255, 255, 0) -- Yellow
    keybow.set_pixel(2, 255, 255, 0) -- Yellow
    keybow.set_pixel(3, 255, 0, 0) -- Red
    keybow.set_pixel(4, 255, 255, 0) -- Yellow
    keybow.set_pixel(5, 255, 0, 0) -- Red
    keybow.set_pixel(6, 0, 255, 0) -- Green
    keybow.set_pixel(7, 0, 255, 0) -- Green
    keybow.set_pixel(8, 0, 255, 0) -- Green
    keybow.set_pixel(9, 0, 0, 255) -- Blue
    keybow.set_pixel(10, 0, 0, 255) -- Blue
    keybow.set_pixel(11, 0, 0, 255) -- Blue
end

-- Key mappings --

function handle_key_00(pressed)
  if pressed then
      keybow.text([[

Thank you for contacting Imperva Support with this issue.
My name is Stefan and I'll be assisting you.

      ]])
  end
end

function handle_key_01(pressed)
  if pressed then
      keybow.text([[

Is there anything further we can help you with on this issue, or are you happy to close this ticket out?

      ]])
  end
end

function handle_key_02(pressed)
  if pressed then
      keybow.text([[

As we have not had any further questions or comments from you on this issue, we'll go ahead and close it out by Close of Business today.
If there is any further help we can give you on this, please do not hesitate to open a new ticket referencing this one.

      ]])
  end
end

function handle_key_03(pressed)
  if pressed then
    win_snippets.reply_all_mail()
  end
end

function handle_key_04(pressed)
  if pressed then
      keybow.text([[

Have you been able to collect and upload the information we requested in our last update?
If there is an issue providing the requested information, would you consider closing this ticket out and opening a follow-up ticket once you are able to continue working this issue with us?

      ]])
  end
end

function handle_key_05(pressed)
  if pressed then
    win_snippets.send_mail()
  end
end

function handle_key_06(pressed)
  if pressed then
    win_snippets.chrome_search_paste()
  end
end

function handle_key_07(pressed)
  if pressed then
      keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_DOWN)
      keybow.tap_key(keybow.SPACE, pressed)
      keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_UP)
      keybow.sleep(100)
      keybow.tap_key("r", pressed)
  end
end

function handle_key_08(pressed)
    if pressed then
      win_snippets.find()
    end
end

function handle_key_09(pressed)
  if pressed then
    win_snippets.snap_left_mon()
  end
end

function handle_key_10(pressed)
  if pressed then
      keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_DOWN)
      keybow.tap_key(keybow.SPACE, pressed)
      keybow.set_modifier(keybow.LEFT_ALT, keybow.KEY_UP)
      keybow.sleep(100)
      keybow.tap_key("x", pressed)
  end
end

function handle_key_11(pressed)
  if pressed then
    win_snippets.snap_right_mon()
  end
end
