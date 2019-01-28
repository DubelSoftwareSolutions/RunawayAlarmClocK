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

class GPIO_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Device = null;
      this.Command = null;
      this.GPIO_on = null;
    }
    else {
      if (initObj.hasOwnProperty('Device')) {
        this.Device = initObj.Device
      }
      else {
        this.Device = '';
      }
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = '';
      }
      if (initObj.hasOwnProperty('GPIO_on')) {
        this.GPIO_on = initObj.GPIO_on
      }
      else {
        this.GPIO_on = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPIO_msg
    // Serialize message field [Device]
    bufferOffset = _serializer.string(obj.Device, buffer, bufferOffset);
    // Serialize message field [Command]
    bufferOffset = _serializer.string(obj.Command, buffer, bufferOffset);
    // Serialize message field [GPIO_on]
    bufferOffset = _serializer.bool(obj.GPIO_on, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPIO_msg
    let len;
    let data = new GPIO_msg(null);
    // Deserialize message field [Device]
    data.Device = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Command]
    data.Command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [GPIO_on]
    data.GPIO_on = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Device.length;
    length += object.Command.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/GPIO_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd85d347562b5b0f5f81b70b7e3f78a6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Device
    string Command
    bool GPIO_on
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPIO_msg(null);
    if (msg.Device !== undefined) {
      resolved.Device = msg.Device;
    }
    else {
      resolved.Device = ''
    }

    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = ''
    }

    if (msg.GPIO_on !== undefined) {
      resolved.GPIO_on = msg.GPIO_on;
    }
    else {
      resolved.GPIO_on = false
    }

    return resolved;
    }
};

module.exports = GPIO_msg;
