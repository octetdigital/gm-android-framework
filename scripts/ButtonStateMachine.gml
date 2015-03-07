///ButtonStateMachine()

/*
    AUTHOR: octetdigital@gmail.com
    DESCRIPTION:  Changes the button's sprite based on the state of the button
    EVENT TYPE: Step
*/

if(m_is_enabled) {
    if(position_meeting(device_mouse_x(0),device_mouse_y(0),id) &&
        device_mouse_check_button_pressed(0,mb_left)) {
        m_curr_state = PRESSED;
        m_timer[0] = room_speed/3;
    } else {
        if m_timer[0] >= 0 { m_timer[0] -= 1; }
        if m_timer[0] == 0 {
            m_curr_state = NORMAL_ENABLED;
        }
    }
} else {
    m_curr_state = NORMAL_DISABLED;
}

if(image_index != m_curr_state) { image_index = m_curr_state; }