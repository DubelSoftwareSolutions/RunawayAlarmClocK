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

class Motor_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Command = null;
      this.Velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = '';
      }
      if (initObj.hasOwnProperty('Velocity')) {
        this.Velocity = initObj.Velocity
      }
      else {
        this.Velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motor_msg
    // Serialize message field [Command]
    bufferOffset = _serializer.string(obj.Command, buffer, bufferOffset);
    // Serialize message field [Velocity]
    bufferOffset = _serializer.float64(obj.Velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motor_msg
    let len;
    let data = new Motor_msg(null);
    // Deserialize message field [Command]
    data.Command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Velocity]
    data.Velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Command.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/Motor_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c014d1091a7b7744802d2d0fda80f11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Command
    float64 Velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motor_msg(null);
    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = ''
    }

    if (msg.Velocity !== undefined) {
      resolved.Velocity = msg.Velocity;
    }
    else {
      resolved.Velocity = 0.0
    }

    return resolved;
    }
};

module.exports = Motor_msg;
