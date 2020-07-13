(define (problem Safety)
(:domain Kitchen)
(:objects
   r1 - room
   h1 - heater
   w1 - window
   e1 - exhaust_fan
   a1 - alarm
   x1 - hvac_system
   m1 - message)
(:init
    (on h1)
    (inside h1 r1)
    (close w1)
    (at-window w1 r1)
    (off1 e1)
    (at-exhaust e1 r1)
    (off a1)
    (at-alarm a1 r1)
    (deactivate x1)
    (in x1 r1)
    ;temp
    (= (temp_threshold) 26)
    (= (temp r1) 27.763907128602515)
    ;load
    (= (weight_threshold) 27)
    (= (weight r1) 26.101130228127804)
    ;hum
    (= (hum_threshold) 65)
    (= (hum r1) 67.0 )
    ;flame
    (= (flame_threshold) 1)
    (= (flame r1) 0)
    ;mq2 sensor
    (= (lpg_threshold) 700)
    (= (lpg r1) 1849.0356490313784)
    ;co2 sensor
    (= (co2_threshold) 500)
    (= (co2 r1) 1729.8957177484228)

)
(:goal
    (and
    (temp-under-control)
    (explosion-prevention)
    (load-msg)
    (hvac-control)))
)