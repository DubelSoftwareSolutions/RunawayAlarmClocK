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

class Keyboard_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Command = null;
    }
    else {
      if (initObj.hasOwnProperty('Command')) {
        this.Command = initObj.Command
      }
      else {
        this.Command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keyboard_msg
    // Serialize message field [Command]
    bufferOffset = _serializer.string(obj.Command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keyboard_msg
    let len;
    let data = new Keyboard_msg(null);
    // Deserialize message field [Command]
    data.Command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Command.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'low_level/Keyboard_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3e9d1976cb2a74a2f5cb06ef8ad543d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Command
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Keyboard_msg(null);
    if (msg.Command !== undefined) {
      resolved.Command = msg.Command;
    }
    else {
      resolved.Command = ''
    }

    return resolved;
    }
};

module.exports = Keyboard_msg;
