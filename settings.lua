-- settings.lua
data:extend({
  {
    type = "double-setting",
    name = "fast-hand-craft-speed",
    setting_type = "runtime-global", -- Настройка применяется глобально для всех игроков
    default_value = 10.0, -- Значение по умолчанию (10x скорость)
    minimum_value = 1.0,  -- Минимальное значение скорости
    maximum_value = 1000000000.0, -- Максимальное значение скорости
    order = "a",
    caption = "Скорость крафта в руках",
    tooltip = "Устанавливает множитель скорости крафта в руках (1 = 100%)."
  }
})