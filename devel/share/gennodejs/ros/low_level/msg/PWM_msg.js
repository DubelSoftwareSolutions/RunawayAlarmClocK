// Auto-generated. Do not edit!

// (in-package low_level.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PWM_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.PWM_on = null;
      this.DutyCycle = null;
      this.Device = null;
    }
    else {
      if (initObj.hasOwnProperty('PWM_on')) {
        this.PWM_on = initObj.PWM_on
      }
      else {
        this.PWM_on = false;
      }
      if (initObj.hasOwnProperty('DutyCycle')) {
        this.DutyCycle = initObj.DutyCycle
      }
      else {
        this.DutyCycle = 0;
      }
      if (initObj.hasOwnProperty('Device')) {
        this.Device = initObj.Device
      }
      else {
        this.Device = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWM_msg
    // Serialize message field [PWM_on]
    bufferOffset = _serializer.bool(obj.PWM_on, buffer, bufferOffset);
    // Serialize message field [DutyCycle]
    bufferOffset = _serializer.uint8(obj.DutyCycle, buffer, bufferOffset);
    // Serialize message field [Device]
    bufferOffset = _serializer.string(obj.Device, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWM_msg
    let len;
    let data = new PWM_msg(null);
    // Deserialize message field [PWM_on]
    data.PWM_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [DutyCycle]
    data.DutyCycle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Device]
    data.Device = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Device.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/PWM_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2a52dcb9d1729882658bf99403797dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool PWM_on
    uint8 DutyCycle
    string Device
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PWM_msg(null);
    if (msg.PWM_on !== undefined) {
      resolved.PWM_on = msg.PWM_on;
    }
    else {
      resolved.PWM_on = false
    }

    if (msg.DutyCycle !== undefined) {
      resolved.DutyCycle = msg.DutyCycle;
    }
    else {
      resolved.DutyCycle = 0
    }

    if (msg.Device !== undefined) {
      resolved.Device = msg.Device;
    }
    else {
      resolved.Device = ''
    }

    return resolved;
    }
};

module.exports = PWM_msg;
