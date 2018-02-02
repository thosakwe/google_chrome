import 'dart:async' as dart_async;
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
// AUTO-GENERATED. DO NOT MODIFY BY HAND.
//
// Chrome DevTools Protocol v1.3

/// All possible values of Console.ConsoleMessage.source.
abstract class ConsoleConsoleMessageSourceEnum {
  static const xml = 'xml';

  static const javascript = 'javascript';

  static const network = 'network';

  static const consoleApi = 'console-api';

  static const storage = 'storage';

  static const appcache = 'appcache';

  static const rendering = 'rendering';

  static const security = 'security';

  static const other = 'other';

  static const deprecation = 'deprecation';

  static const worker = 'worker';
}

/// All possible values of Console.ConsoleMessage.level.
abstract class ConsoleConsoleMessageLevelEnum {
  static const log = 'log';

  static const warning = 'warning';

  static const error = 'error';

  static const debug = 'debug';

  static const info = 'info';
}

/** Console message. */
class ConsoleMessage {
  ConsoleMessage(Map map) {
    source = map['source'];
    level = map['level'];
    text = map['text'];
    url = map['url'];
    line = map['line'];
    column = map['column'];
  }

/** Message source. */
  String source;

/** Message severity. */
  String level;

/** Message text. */
  String text;

/** URL of the message origin. */
  String url;

/** Line number in the resource that generated this message (1-based). */
  int line;

/** Column number in the resource that generated this message (1-based). */
  int column;
}

/// All possible values of Debugger.BreakLocation.type.
abstract class DebuggerBreakLocationTypeEnum {
  static const debuggerStatement = 'debuggerStatement';

  static const call = 'call';

  static const $return = 'return';
}

/**  */
class BreakLocation {
  BreakLocation(Map map) {
    scriptId = map['scriptId'];
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
    type = map['type'];
  }

/** Script identifier as reported in the `Debugger.scriptParsed`. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

/**  */
  String type;
}

/** Search match for resource. */
class SearchMatch {
  SearchMatch(Map map) {
    lineNumber = map['lineNumber'];
    lineContent = map['lineContent'];
  }

/** Line number in resource content. */
  num lineNumber;

/** Line with match content. */
  String lineContent;
}

/// All possible values of Debugger.Scope.type.
abstract class DebuggerScopeTypeEnum {
  static const global = 'global';

  static const local = 'local';

  static const $with = 'with';

  static const closure = 'closure';

  static const $catch = 'catch';

  static const block = 'block';

  static const script = 'script';

  static const eval = 'eval';

  static const module = 'module';
}

/** Scope description. */
class Scope {
  Scope(Map map) {
    type = map['type'];
    object = map.containsKey('object') ? new RemoteObject(map['object']) : null;
    name = map['name'];
    startLocation = map.containsKey('startLocation')
        ? new Location(map['startLocation'])
        : null;
    endLocation = map.containsKey('endLocation')
        ? new Location(map['endLocation'])
        : null;
  }

/** Scope type. */
  String type;

/** Object representing the scope. For `global` and `with` scopes it represents the actual
object; for the rest of the scopes, it is artificial transient object enumerating scope
variables as its properties. */
  RemoteObject object;

/**  */
  String name;

/** Location in the source code where scope starts */
  Location startLocation;

/** Location in the source code where scope ends */
  Location endLocation;
}

/** JavaScript call frame. Array of call frames form the call stack. */
class CallFrame {
  CallFrame(Map map) {
    callFrameId = map['callFrameId'];
    functionName = map['functionName'];
    functionLocation = map.containsKey('functionLocation')
        ? new Location(map['functionLocation'])
        : null;
    location =
        map.containsKey('location') ? new Location(map['location']) : null;
    url = map['url'];
    scopeChain = map['scopeChain'] is Iterable
        ? map['scopeChain'].map((m) => new Scope(m)).toList()
        : null;
    $this = map.containsKey('$this') ? new RemoteObject(map['$this']) : null;
    returnValue = map.containsKey('returnValue')
        ? new RemoteObject(map['returnValue'])
        : null;
  }

/** Call frame identifier. This identifier is only valid while the virtual machine is paused. */
  String callFrameId;

/** Name of the JavaScript function called on this call frame. */
  String functionName;

/** Location in the source code. */
  Location functionLocation;

/** Location in the source code. */
  Location location;

/** JavaScript script name or url. */
  String url;

/** Scope chain for this call frame. */
  List<Scope> scopeChain;

/** `this` object for this call frame. */
  RemoteObject $this;

/** The value being returned, if the function is at return point. */
  RemoteObject returnValue;
}

/** Location in the source code. */
class ScriptPosition {
  ScriptPosition(Map map) {
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
  }

/**  */
  int lineNumber;

/**  */
  int columnNumber;
}

/** Location in the source code. */
class Location {
  Location(Map map) {
    scriptId = map['scriptId'];
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
  }

/** Script identifier as reported in the `Debugger.scriptParsed`. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;
}

/** Profile. */
class SamplingHeapProfile {
  SamplingHeapProfile(Map map) {
    head = map.containsKey('head')
        ? new SamplingHeapProfileNode(map['head'])
        : null;
  }

/**  */
  SamplingHeapProfileNode head;
}

/** Sampling Heap Profile node. Holds callsite information, allocation statistics and child nodes. */
class SamplingHeapProfileNode {
  SamplingHeapProfileNode(Map map) {
    callFrame =
        map.containsKey('callFrame') ? new CallFrame(map['callFrame']) : null;
    selfSize = map['selfSize'];
    children = map['children'] is Iterable
        ? map['children'].map((m) => new SamplingHeapProfileNode(m)).toList()
        : null;
  }

/** Function location. */
  CallFrame callFrame;

/** Allocations size in bytes for the node excluding children. */
  num selfSize;

/** Child nodes. */
  List<SamplingHeapProfileNode> children;
}

/** Type profile data collected during runtime for a JavaScript script. */
class ScriptTypeProfile {
  ScriptTypeProfile(Map map) {
    scriptId = map['scriptId'];
    url = map['url'];
    entries = map['entries'] is Iterable
        ? map['entries'].map((m) => new TypeProfileEntry(m)).toList()
        : null;
  }

/** JavaScript script id. */
  String scriptId;

/** JavaScript script name or url. */
  String url;

/** Type profile entries for parameters and return values of the functions in the script. */
  List<TypeProfileEntry> entries;
}

/** Source offset and types for a parameter or return value. */
class TypeProfileEntry {
  TypeProfileEntry(Map map) {
    offset = map['offset'];
    types = map['types'] is Iterable
        ? map['types'].map((m) => new TypeObject(m)).toList()
        : null;
  }

/** Source offset of the parameter or end of function for return values. */
  int offset;

/** The types for this parameter or return value. */
  List<TypeObject> types;
}

/** Describes a type collected during runtime. */
class TypeObject {
  TypeObject(Map map) {
    name = map['name'];
  }

/** Name of a type collected with type profiling. */
  String name;
}

/** Coverage data for a JavaScript script. */
class ScriptCoverage {
  ScriptCoverage(Map map) {
    scriptId = map['scriptId'];
    url = map['url'];
    functions = map['functions'] is Iterable
        ? map['functions'].map((m) => new FunctionCoverage(m)).toList()
        : null;
  }

/** JavaScript script id. */
  String scriptId;

/** JavaScript script name or url. */
  String url;

/** Functions contained in the script that has coverage data. */
  List<FunctionCoverage> functions;
}

/** Coverage data for a JavaScript function. */
class FunctionCoverage {
  FunctionCoverage(Map map) {
    functionName = map['functionName'];
    ranges = map['ranges'] is Iterable
        ? map['ranges'].map((m) => new CoverageRange(m)).toList()
        : null;
    isBlockCoverage = map['isBlockCoverage'];
  }

/** JavaScript function name. */
  String functionName;

/** Source ranges inside the function with coverage data. */
  List<CoverageRange> ranges;

/** Whether coverage data for this function has block granularity. */
  bool isBlockCoverage;
}

/** Coverage data for a source range. */
class CoverageRange {
  CoverageRange(Map map) {
    startOffset = map['startOffset'];
    endOffset = map['endOffset'];
    count = map['count'];
  }

/** JavaScript script source offset for the range start. */
  int startOffset;

/** JavaScript script source offset for the range end. */
  int endOffset;

/** Collected execution count of the source range. */
  int count;
}

/** Specifies a number of samples attributed to a certain source position. */
class PositionTickInfo {
  PositionTickInfo(Map map) {
    line = map['line'];
    ticks = map['ticks'];
  }

/** Source line number (1-based). */
  int line;

/** Number of samples attributed to the source line. */
  int ticks;
}

/** Profile. */
class Profile {
  Profile(Map map) {
    nodes = map['nodes'] is Iterable
        ? map['nodes'].map((m) => new ProfileNode(m)).toList()
        : null;
    startTime = map['startTime'];
    endTime = map['endTime'];
    samples = map['samples'];
    timeDeltas = map['timeDeltas'];
  }

/** The list of profile nodes. First item is the root node. */
  List<ProfileNode> nodes;

/** Profiling start timestamp in microseconds. */
  num startTime;

/** Profiling end timestamp in microseconds. */
  num endTime;

/** Ids of samples top nodes. */
  List samples;

/** Time intervals between adjacent samples in microseconds. The first delta is relative to the
profile startTime. */
  List timeDeltas;
}

/** Profile node. Holds callsite information, execution statistics and child nodes. */
class ProfileNode {
  ProfileNode(Map map) {
    id = map['id'];
    callFrame =
        map.containsKey('callFrame') ? new CallFrame(map['callFrame']) : null;
    hitCount = map['hitCount'];
    children = map['children'];
    deoptReason = map['deoptReason'];
    positionTicks = map['positionTicks'] is Iterable
        ? map['positionTicks'].map((m) => new PositionTickInfo(m)).toList()
        : null;
  }

/** Unique id of the node. */
  int id;

/** Function location. */
  CallFrame callFrame;

/** Number of samples where this node was on top of the call stack. */
  int hitCount;

/** Child node ids. */
  List children;

/** The reason of being not optimized. The function may be deoptimized or marked as don't
optimize. */
  String deoptReason;

/** An array of source position ticks. */
  List<PositionTickInfo> positionTicks;
}

/** If `debuggerId` is set stack trace comes from another debugger and can be resolved there. This
allows to track cross-debugger calls. See `Runtime.StackTrace` and `Debugger.paused` for usages. */
class StackTraceId {
  StackTraceId(Map map) {
    id = map['id'];
    debuggerId = map['debuggerId'];
  }

/**  */
  String id;

/**  */
  String debuggerId;
}

/** Call frames for assertions or error messages. */
class StackTrace {
  StackTrace(Map map) {
    description = map['description'];
    callFrames = map['callFrames'] is Iterable
        ? map['callFrames'].map((m) => new CallFrame(m)).toList()
        : null;
    parent = map.containsKey('parent') ? new StackTrace(map['parent']) : null;
    parentId =
        map.containsKey('parentId') ? new StackTraceId(map['parentId']) : null;
  }

/** String label of this stack trace. For async traces this may be a name of the function that
initiated the async call. */
  String description;

/** JavaScript function name. */
  List<CallFrame> callFrames;

/** Asynchronous JavaScript stack trace that preceded this stack, if available. */
  StackTrace parent;

/** Asynchronous JavaScript stack trace that preceded this stack, if available. */
  StackTraceId parentId;
}

/** Detailed information about exception (or error) that was thrown during script compilation or
execution. */
class ExceptionDetails {
  ExceptionDetails(Map map) {
    exceptionId = map['exceptionId'];
    text = map['text'];
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
    scriptId = map['scriptId'];
    url = map['url'];
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
    exception = map.containsKey('exception')
        ? new RemoteObject(map['exception'])
        : null;
    executionContextId = map['executionContextId'];
  }

/** Exception id. */
  int exceptionId;

/** Exception text, which should be used together with exception object when available. */
  String text;

/** Line number of the exception location (0-based). */
  int lineNumber;

/** Column number of the exception location (0-based). */
  int columnNumber;

/** Script ID of the exception location. */
  String scriptId;

/** URL of the exception location, to be used when the script was not reported. */
  String url;

/** JavaScript stack trace if available. */
  StackTrace stackTrace;

/** Exception object if available. */
  RemoteObject exception;

/** Identifier of the context where exception happened. */
  int executionContextId;
}

/** Description of an isolated world. */
class ExecutionContextDescription {
  ExecutionContextDescription(Map map) {
    id = map['id'];
    origin = map['origin'];
    name = map['name'];
    auxData = map['auxData'];
  }

/** Unique id of the execution context. It can be used to specify in which execution context
script evaluation should be performed. */
  int id;

/** Execution context origin. */
  String origin;

/** Human readable name describing given context. */
  String name;

/** Embedder-specific auxiliary data. */
  Map<String, dynamic> auxData;
}

/** Represents function call argument. Either remote object id `objectId`, primitive `value`,
unserializable primitive value or neither of (for undefined) them should be specified. */
class CallArgument {
  CallArgument(Map map) {
    value = map['value'];
    unserializableValue = map['unserializableValue'];
    objectId = map['objectId'];
  }

/** Primitive value or serializable javascript object. */
  Object value;

/** Primitive value which can not be JSON-stringified. */
  String unserializableValue;

/** Remote object handle. */
  String objectId;
}

/** Object internal property descriptor. This property isn't normally visible in JavaScript code. */
class InternalPropertyDescriptor {
  InternalPropertyDescriptor(Map map) {
    name = map['name'];
    value = map.containsKey('value') ? new RemoteObject(map['value']) : null;
  }

/** Conventional property name. */
  String name;

/** The value associated with the property. */
  RemoteObject value;
}

/** Object property descriptor. */
class PropertyDescriptor {
  PropertyDescriptor(Map map) {
    name = map['name'];
    value = map.containsKey('value') ? new RemoteObject(map['value']) : null;
    writable = map['writable'];
    get = map.containsKey('get') ? new RemoteObject(map['get']) : null;
    set = map.containsKey('set') ? new RemoteObject(map['set']) : null;
    configurable = map['configurable'];
    enumerable = map['enumerable'];
    wasThrown = map['wasThrown'];
    isOwn = map['isOwn'];
    symbol = map.containsKey('symbol') ? new RemoteObject(map['symbol']) : null;
  }

/** Property name or symbol description. */
  String name;

/** The value associated with the property. */
  RemoteObject value;

/** True if the value associated with the property may be changed (data descriptors only). */
  bool writable;

/** A function which serves as a getter for the property, or `undefined` if there is no getter
(accessor descriptors only). */
  RemoteObject get;

/** A function which serves as a setter for the property, or `undefined` if there is no setter
(accessor descriptors only). */
  RemoteObject set;

/** True if the type of this property descriptor may be changed and if the property may be
deleted from the corresponding object. */
  bool configurable;

/** True if this property shows up during enumeration of the properties on the corresponding
object. */
  bool enumerable;

/** True if the result was thrown during the evaluation. */
  bool wasThrown;

/** True if the property is owned for the object. */
  bool isOwn;

/** Property symbol object, if the property is of the `symbol` type. */
  RemoteObject symbol;
}

/**  */
class EntryPreview {
  EntryPreview(Map map) {
    key = map.containsKey('key') ? new ObjectPreview(map['key']) : null;
    value = map.containsKey('value') ? new ObjectPreview(map['value']) : null;
  }

/** Preview of the key. Specified for map-like collection entries. */
  ObjectPreview key;

/** Preview of the value. */
  ObjectPreview value;
}

/// All possible values of Runtime.PropertyPreview.type.
abstract class RuntimePropertyPreviewTypeEnum {
  static const object = 'object';

  static const function = 'function';

  static const undefined = 'undefined';

  static const string = 'string';

  static const number = 'number';

  static const boolean = 'boolean';

  static const symbol = 'symbol';

  static const accessor = 'accessor';
}

/// All possible values of Runtime.PropertyPreview.subtype.
abstract class RuntimePropertyPreviewSubtypeEnum {
  static const array = 'array';

  static const $null = 'null';

  static const node = 'node';

  static const regexp = 'regexp';

  static const date = 'date';

  static const map = 'map';

  static const set = 'set';

  static const weakmap = 'weakmap';

  static const weakset = 'weakset';

  static const iterator = 'iterator';

  static const generator = 'generator';

  static const error = 'error';
}

/**  */
class PropertyPreview {
  PropertyPreview(Map map) {
    name = map['name'];
    type = map['type'];
    value = map['value'];
    valuePreview = map.containsKey('valuePreview')
        ? new ObjectPreview(map['valuePreview'])
        : null;
    subtype = map['subtype'];
  }

/** Property name. */
  String name;

/** Object type. Accessor means that the property itself is an accessor property. */
  String type;

/** User-friendly property value string. */
  String value;

/** Nested value preview. */
  ObjectPreview valuePreview;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;
}

/// All possible values of Runtime.ObjectPreview.type.
abstract class RuntimeObjectPreviewTypeEnum {
  static const object = 'object';

  static const function = 'function';

  static const undefined = 'undefined';

  static const string = 'string';

  static const number = 'number';

  static const boolean = 'boolean';

  static const symbol = 'symbol';
}

/// All possible values of Runtime.ObjectPreview.subtype.
abstract class RuntimeObjectPreviewSubtypeEnum {
  static const array = 'array';

  static const $null = 'null';

  static const node = 'node';

  static const regexp = 'regexp';

  static const date = 'date';

  static const map = 'map';

  static const set = 'set';

  static const weakmap = 'weakmap';

  static const weakset = 'weakset';

  static const iterator = 'iterator';

  static const generator = 'generator';

  static const error = 'error';
}

/** Object containing abbreviated remote object value. */
class ObjectPreview {
  ObjectPreview(Map map) {
    type = map['type'];
    subtype = map['subtype'];
    description = map['description'];
    overflow = map['overflow'];
    properties = map['properties'] is Iterable
        ? map['properties'].map((m) => new PropertyPreview(m)).toList()
        : null;
    entries = map['entries'] is Iterable
        ? map['entries'].map((m) => new EntryPreview(m)).toList()
        : null;
  }

/** Object type. */
  String type;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;

/** String representation of the object. */
  String description;

/** True iff some of the properties or entries of the original object did not fit. */
  bool overflow;

/** List of the properties. */
  List<PropertyPreview> properties;

/** List of the entries. Specified for `map` and `set` subtype values only. */
  List<EntryPreview> entries;
}

/**  */
class CustomPreview {
  CustomPreview(Map map) {
    header = map['header'];
    hasBody = map['hasBody'];
    formatterObjectId = map['formatterObjectId'];
    bindRemoteObjectFunctionId = map['bindRemoteObjectFunctionId'];
    configObjectId = map['configObjectId'];
  }

/**  */
  String header;

/**  */
  bool hasBody;

/**  */
  String formatterObjectId;

/**  */
  String bindRemoteObjectFunctionId;

/**  */
  String configObjectId;
}

/// All possible values of Runtime.RemoteObject.type.
abstract class RuntimeRemoteObjectTypeEnum {
  static const object = 'object';

  static const function = 'function';

  static const undefined = 'undefined';

  static const string = 'string';

  static const number = 'number';

  static const boolean = 'boolean';

  static const symbol = 'symbol';
}

/// All possible values of Runtime.RemoteObject.subtype.
abstract class RuntimeRemoteObjectSubtypeEnum {
  static const array = 'array';

  static const $null = 'null';

  static const node = 'node';

  static const regexp = 'regexp';

  static const date = 'date';

  static const map = 'map';

  static const set = 'set';

  static const weakmap = 'weakmap';

  static const weakset = 'weakset';

  static const iterator = 'iterator';

  static const generator = 'generator';

  static const error = 'error';

  static const proxy = 'proxy';

  static const promise = 'promise';

  static const typedarray = 'typedarray';
}

/** Mirror object referencing original JavaScript object. */
class RemoteObject {
  RemoteObject(Map map) {
    type = map['type'];
    subtype = map['subtype'];
    className = map['className'];
    value = map['value'];
    unserializableValue = map['unserializableValue'];
    description = map['description'];
    objectId = map['objectId'];
    preview =
        map.containsKey('preview') ? new ObjectPreview(map['preview']) : null;
    customPreview = map.containsKey('customPreview')
        ? new CustomPreview(map['customPreview'])
        : null;
  }

/** Object type. */
  String type;

/** Object subtype hint. Specified for `object` type values only. */
  String subtype;

/** Object class (constructor) name. Specified for `object` type values only. */
  String className;

/** Remote object value in case of primitive values or JSON values (if it was requested). */
  Object value;

/** Primitive value which can not be JSON-stringified does not have `value`, but gets this
property. */
  String unserializableValue;

/** String representation of the object. */
  String description;

/** Unique object identifier (for non-primitive values). */
  String objectId;

/** Preview containing abbreviated property values. Specified for `object` type values only. */
  ObjectPreview preview;

/**  */
  CustomPreview customPreview;
}

/** Description of the protocol domain. */
class Domain {
  Domain(Map map) {
    name = map['name'];
    version = map['version'];
  }

/** Domain name. */
  String name;

/** Domain version. */
  String version;
}

/** A node in the accessibility tree. */
class AXNode {
  AXNode(Map map) {
    nodeId = map['nodeId'];
    ignored = map['ignored'];
    ignoredReasons = map['ignoredReasons'] is Iterable
        ? map['ignoredReasons'].map((m) => new AXProperty(m)).toList()
        : null;
    role = map.containsKey('role') ? new AXValue(map['role']) : null;
    name = map.containsKey('name') ? new AXValue(map['name']) : null;
    description =
        map.containsKey('description') ? new AXValue(map['description']) : null;
    value = map.containsKey('value') ? new AXValue(map['value']) : null;
    properties = map['properties'] is Iterable
        ? map['properties'].map((m) => new AXProperty(m)).toList()
        : null;
    childIds = map['childIds'];
    backendDOMNodeId = map['backendDOMNodeId'];
  }

/** Unique identifier for this node. */
  String nodeId;

/** Whether this node is ignored for accessibility */
  bool ignored;

/** Collection of reasons why this node is hidden. */
  List<AXProperty> ignoredReasons;

/** This `Node`'s role, whether explicit or implicit. */
  AXValue role;

/** The accessible name for this `Node`. */
  AXValue name;

/** The accessible description for this `Node`. */
  AXValue description;

/** The value for this `Node`. */
  AXValue value;

/** All other properties */
  List<AXProperty> properties;

/** IDs for each of this node's child nodes. */
  List<String> childIds;

/** The backend ID for the associated DOM node, if any. */
  int backendDOMNodeId;
}

/** A single computed AX property. */
class AXValue {
  AXValue(Map map) {
    type = map['type'];
    value = map['value'];
    relatedNodes = map['relatedNodes'] is Iterable
        ? map['relatedNodes'].map((m) => new AXRelatedNode(m)).toList()
        : null;
    sources = map['sources'] is Iterable
        ? map['sources'].map((m) => new AXValueSource(m)).toList()
        : null;
  }

/** The type of this value. */
  String type;

/** The computed value of this property. */
  Object value;

/** One or more related nodes, if applicable. */
  List<AXRelatedNode> relatedNodes;

/** The sources which contributed to the computation of this property. */
  List<AXValueSource> sources;
}

/**  */
class AXProperty {
  AXProperty(Map map) {
    name = map['name'];
    value = map.containsKey('value') ? new AXValue(map['value']) : null;
  }

/** The name of this property. */
  String name;

/** The value of this property. */
  AXValue value;
}

/**  */
class AXRelatedNode {
  AXRelatedNode(Map map) {
    backendDOMNodeId = map['backendDOMNodeId'];
    idref = map['idref'];
    text = map['text'];
  }

/** The BackendNodeId of the related DOM node. */
  int backendDOMNodeId;

/** The IDRef value provided, if any. */
  String idref;

/** The text alternative of this node in the current context. */
  String text;
}

/** A single source for a computed AX property. */
class AXValueSource {
  AXValueSource(Map map) {
    type = map['type'];
    value = map.containsKey('value') ? new AXValue(map['value']) : null;
    attribute = map['attribute'];
    attributeValue = map.containsKey('attributeValue')
        ? new AXValue(map['attributeValue'])
        : null;
    superseded = map['superseded'];
    nativeSource = map['nativeSource'];
    nativeSourceValue = map.containsKey('nativeSourceValue')
        ? new AXValue(map['nativeSourceValue'])
        : null;
    invalid = map['invalid'];
    invalidReason = map['invalidReason'];
  }

/** What type of source this is. */
  String type;

/** The value of this property source. */
  AXValue value;

/** The name of the relevant attribute, if any. */
  String attribute;

/** The value of the relevant attribute, if any. */
  AXValue attributeValue;

/** Whether this source is superseded by a higher priority source. */
  bool superseded;

/** The native markup source for this value, e.g. a <label> element. */
  String nativeSource;

/** The value, such as a node or node list, of the native source. */
  AXValue nativeSourceValue;

/** Whether the value for this property is invalid. */
  bool invalid;

/** Reason for the value being invalid, if it is. */
  String invalidReason;
}

/** Keyframe Style */
class KeyframeStyle {
  KeyframeStyle(Map map) {
    offset = map['offset'];
    easing = map['easing'];
  }

/** Keyframe's time offset. */
  String offset;

/** `AnimationEffect`'s timing function. */
  String easing;
}

/** Keyframes Rule */
class KeyframesRule {
  KeyframesRule(Map map) {
    name = map['name'];
    keyframes = map['keyframes'] is Iterable
        ? map['keyframes'].map((m) => new KeyframeStyle(m)).toList()
        : null;
  }

/** CSS keyframed animation's name. */
  String name;

/** List of animation keyframes. */
  List<KeyframeStyle> keyframes;
}

/** AnimationEffect instance */
class AnimationEffect {
  AnimationEffect(Map map) {
    delay = map['delay'];
    endDelay = map['endDelay'];
    iterationStart = map['iterationStart'];
    iterations = map['iterations'];
    duration = map['duration'];
    direction = map['direction'];
    fill = map['fill'];
    backendNodeId = map['backendNodeId'];
    keyframesRule = map.containsKey('keyframesRule')
        ? new KeyframesRule(map['keyframesRule'])
        : null;
    easing = map['easing'];
  }

/** `AnimationEffect`'s delay. */
  num delay;

/** `AnimationEffect`'s end delay. */
  num endDelay;

/** `AnimationEffect`'s iteration start. */
  num iterationStart;

/** `AnimationEffect`'s iterations. */
  num iterations;

/** `AnimationEffect`'s iteration duration. */
  num duration;

/** `AnimationEffect`'s playback direction. */
  String direction;

/** `AnimationEffect`'s fill mode. */
  String fill;

/** `AnimationEffect`'s target node. */
  int backendNodeId;

/** `AnimationEffect`'s keyframes. */
  KeyframesRule keyframesRule;

/** `AnimationEffect`'s timing function. */
  String easing;
}

/// All possible values of Animation.Animation.type.
abstract class AnimationAnimationTypeEnum {
  static const cSSTransition = 'CSSTransition';

  static const cSSAnimation = 'CSSAnimation';

  static const webAnimation = 'WebAnimation';
}

/** Animation instance. */
class Animation {
  Animation(Map map) {
    id = map['id'];
    name = map['name'];
    pausedState = map['pausedState'];
    playState = map['playState'];
    playbackRate = map['playbackRate'];
    startTime = map['startTime'];
    currentTime = map['currentTime'];
    type = map['type'];
    source =
        map.containsKey('source') ? new AnimationEffect(map['source']) : null;
    cssId = map['cssId'];
  }

/** `Animation`'s id. */
  String id;

/** `Animation`'s name. */
  String name;

/** `Animation`'s internal paused state. */
  bool pausedState;

/** `Animation`'s play state. */
  String playState;

/** `Animation`'s playback rate. */
  num playbackRate;

/** `Animation`'s start time. */
  num startTime;

/** `Animation`'s current time. */
  num currentTime;

/** Animation type of `Animation`. */
  String type;

/** `Animation`'s source animation node. */
  AnimationEffect source;

/** A unique ID for `Animation` representing the sources that triggered this CSS
animation/transition. */
  String cssId;
}

/** Frame identifier - manifest URL pair. */
class FrameWithManifest {
  FrameWithManifest(Map map) {
    frameId = map['frameId'];
    manifestURL = map['manifestURL'];
    status = map['status'];
  }

/** Frame identifier. */
  String frameId;

/** Manifest URL. */
  String manifestURL;

/** Application cache status. */
  int status;
}

/** Detailed application cache information. */
class ApplicationCache {
  ApplicationCache(Map map) {
    manifestURL = map['manifestURL'];
    size = map['size'];
    creationTime = map['creationTime'];
    updateTime = map['updateTime'];
    resources = map['resources'] is Iterable
        ? map['resources'].map((m) => new ApplicationCacheResource(m)).toList()
        : null;
  }

/** Manifest URL. */
  String manifestURL;

/** Application cache size. */
  num size;

/** Application cache creation time. */
  num creationTime;

/** Application cache update time. */
  num updateTime;

/** Application cache resources. */
  List<ApplicationCacheResource> resources;
}

/** Detailed application cache resource information. */
class ApplicationCacheResource {
  ApplicationCacheResource(Map map) {
    url = map['url'];
    size = map['size'];
    type = map['type'];
  }

/** Resource url. */
  String url;

/** Resource size. */
  int size;

/** Resource type. */
  String type;
}

/** Chrome histogram. */
class Histogram {
  Histogram(Map map) {
    name = map['name'];
    sum = map['sum'];
    count = map['count'];
    buckets = map['buckets'] is Iterable
        ? map['buckets'].map((m) => new Bucket(m)).toList()
        : null;
  }

/** Name. */
  String name;

/** Sum of sample values. */
  int sum;

/** Total number of samples. */
  int count;

/** Buckets. */
  List<Bucket> buckets;
}

/** Chrome histogram bucket. */
class Bucket {
  Bucket(Map map) {
    low = map['low'];
    high = map['high'];
    count = map['count'];
  }

/** Minimum value (inclusive). */
  int low;

/** Maximum value (exclusive). */
  int high;

/** Number of samples. */
  int count;
}

/** Browser window bounds information */
class Bounds {
  Bounds(Map map) {
    left = map['left'];
    top = map['top'];
    width = map['width'];
    height = map['height'];
    windowState = map['windowState'];
  }

/** The offset from the left edge of the screen to the window in pixels. */
  int left;

/** The offset from the top edge of the screen to the window in pixels. */
  int top;

/** The window width in pixels. */
  int width;

/** The window height in pixels. */
  int height;

/** The window state. Default to normal. */
  String windowState;
}

/** A descriptor of operation to mutate style declaration text. */
class StyleDeclarationEdit {
  StyleDeclarationEdit(Map map) {
    styleSheetId = map['styleSheetId'];
    range = map.containsKey('range') ? new SourceRange(map['range']) : null;
    text = map['text'];
  }

/** The css style sheet identifier. */
  String styleSheetId;

/** The range of the style text in the enclosing stylesheet. */
  SourceRange range;

/** New style text. */
  String text;
}

/** CSS keyframe rule representation. */
class CSSKeyframeRule {
  CSSKeyframeRule(Map map) {
    styleSheetId = map['styleSheetId'];
    origin = map['origin'];
    keyText = map.containsKey('keyText') ? new Value(map['keyText']) : null;
    style = map.containsKey('style') ? new CSSStyle(map['style']) : null;
  }

/** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Parent stylesheet's origin. */
  String origin;

/** Associated key text. */
  Value keyText;

/** Associated style declaration. */
  CSSStyle style;
}

/** CSS keyframes rule representation. */
class CSSKeyframesRule {
  CSSKeyframesRule(Map map) {
    animationName = map.containsKey('animationName')
        ? new Value(map['animationName'])
        : null;
    keyframes = map['keyframes'] is Iterable
        ? map['keyframes'].map((m) => new CSSKeyframeRule(m)).toList()
        : null;
  }

/** Animation name. */
  Value animationName;

/** List of keyframes. */
  List<CSSKeyframeRule> keyframes;
}

/** Information about amount of glyphs that were rendered with given font. */
class PlatformFontUsage {
  PlatformFontUsage(Map map) {
    familyName = map['familyName'];
    isCustomFont = map['isCustomFont'];
    glyphCount = map['glyphCount'];
  }

/** Font's family name reported by platform. */
  String familyName;

/** Indicates if the font was downloaded or resolved locally. */
  bool isCustomFont;

/** Amount of glyphs that were rendered with this font. */
  num glyphCount;
}

/** Media query expression descriptor. */
class MediaQueryExpression {
  MediaQueryExpression(Map map) {
    value = map['value'];
    unit = map['unit'];
    feature = map['feature'];
    valueRange = map.containsKey('valueRange')
        ? new SourceRange(map['valueRange'])
        : null;
    computedLength = map['computedLength'];
  }

/** Media query expression value. */
  num value;

/** Media query expression units. */
  String unit;

/** Media query expression feature. */
  String feature;

/** The associated range of the value text in the enclosing stylesheet (if available). */
  SourceRange valueRange;

/** Computed length of media query expression (if applicable). */
  num computedLength;
}

/** Media query descriptor. */
class MediaQuery {
  MediaQuery(Map map) {
    expressions = map['expressions'] is Iterable
        ? map['expressions'].map((m) => new MediaQueryExpression(m)).toList()
        : null;
    active = map['active'];
  }

/** Array of media query expressions. */
  List<MediaQueryExpression> expressions;

/** Whether the media query condition is satisfied. */
  bool active;
}

/// All possible values of CSS.CSSMedia.source.
abstract class CSSCSSMediaSourceEnum {
  static const mediaRule = 'mediaRule';

  static const importRule = 'importRule';

  static const linkedSheet = 'linkedSheet';

  static const inlineSheet = 'inlineSheet';
}

/** CSS media rule descriptor. */
class CSSMedia {
  CSSMedia(Map map) {
    text = map['text'];
    source = map['source'];
    sourceURL = map['sourceURL'];
    range = map.containsKey('range') ? new SourceRange(map['range']) : null;
    styleSheetId = map['styleSheetId'];
    mediaList = map['mediaList'] is Iterable
        ? map['mediaList'].map((m) => new MediaQuery(m)).toList()
        : null;
  }

/** Media query text. */
  String text;

/** Source of the media query: "mediaRule" if specified by a @media rule, "importRule" if
specified by an @import rule, "linkedSheet" if specified by a "media" attribute in a linked
stylesheet's LINK tag, "inlineSheet" if specified by a "media" attribute in an inline
stylesheet's STYLE tag. */
  String source;

/** URL of the document containing the media query description. */
  String sourceURL;

/** The associated rule (@media or @import) header range in the enclosing stylesheet (if
available). */
  SourceRange range;

/** Identifier of the stylesheet containing this object (if exists). */
  String styleSheetId;

/** Array of media queries. */
  List<MediaQuery> mediaList;
}

/** CSS property declaration data. */
class CSSProperty {
  CSSProperty(Map map) {
    name = map['name'];
    value = map['value'];
    important = map['important'];
    implicit = map['implicit'];
    text = map['text'];
    parsedOk = map['parsedOk'];
    disabled = map['disabled'];
    range = map.containsKey('range') ? new SourceRange(map['range']) : null;
  }

/** The property name. */
  String name;

/** The property value. */
  String value;

/** Whether the property has "!important" annotation (implies `false` if absent). */
  bool important;

/** Whether the property is implicit (implies `false` if absent). */
  bool implicit;

/** The full property text as specified in the style. */
  String text;

/** Whether the property is understood by the browser (implies `true` if absent). */
  bool parsedOk;

/** Whether the property is disabled by the user (present for source-based properties only). */
  bool disabled;

/** The entire property range in the enclosing style declaration (if available). */
  SourceRange range;
}

/** CSS style representation. */
class CSSStyle {
  CSSStyle(Map map) {
    styleSheetId = map['styleSheetId'];
    cssProperties = map['cssProperties'] is Iterable
        ? map['cssProperties'].map((m) => new CSSProperty(m)).toList()
        : null;
    shorthandEntries = map['shorthandEntries'] is Iterable
        ? map['shorthandEntries'].map((m) => new ShorthandEntry(m)).toList()
        : null;
    cssText = map['cssText'];
    range = map.containsKey('range') ? new SourceRange(map['range']) : null;
  }

/** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** CSS properties in the style. */
  List<CSSProperty> cssProperties;

/** Computed values for all shorthands found in the style. */
  List<ShorthandEntry> shorthandEntries;

/** Style declaration text (if available). */
  String cssText;

/** Style declaration range in the enclosing stylesheet (if available). */
  SourceRange range;
}

/**  */
class CSSComputedStyleProperty {
  CSSComputedStyleProperty(Map map) {
    name = map['name'];
    value = map['value'];
  }

/** Computed style property name. */
  String name;

/** Computed style property value. */
  String value;
}

/**  */
class ShorthandEntry {
  ShorthandEntry(Map map) {
    name = map['name'];
    value = map['value'];
    important = map['important'];
  }

/** Shorthand name. */
  String name;

/** Shorthand value. */
  String value;

/** Whether the property has "!important" annotation (implies `false` if absent). */
  bool important;
}

/** Text range within a resource. All numbers are zero-based. */
class SourceRange {
  SourceRange(Map map) {
    startLine = map['startLine'];
    startColumn = map['startColumn'];
    endLine = map['endLine'];
    endColumn = map['endColumn'];
  }

/** Start line of range. */
  int startLine;

/** Start column of range (inclusive). */
  int startColumn;

/** End line of range */
  int endLine;

/** End column of range (exclusive). */
  int endColumn;
}

/** CSS coverage information. */
class RuleUsage {
  RuleUsage(Map map) {
    styleSheetId = map['styleSheetId'];
    startOffset = map['startOffset'];
    endOffset = map['endOffset'];
    used = map['used'];
  }

/** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Offset of the start of the rule (including selector) from the beginning of the stylesheet. */
  num startOffset;

/** Offset of the end of the rule body from the beginning of the stylesheet. */
  num endOffset;

/** Indicates whether the rule was actually used by some element in the page. */
  bool used;
}

/** CSS rule representation. */
class CSSRule {
  CSSRule(Map map) {
    styleSheetId = map['styleSheetId'];
    selectorList = map.containsKey('selectorList')
        ? new SelectorList(map['selectorList'])
        : null;
    origin = map['origin'];
    style = map.containsKey('style') ? new CSSStyle(map['style']) : null;
    media = map['media'] is Iterable
        ? map['media'].map((m) => new CSSMedia(m)).toList()
        : null;
  }

/** The css style sheet identifier (absent for user agent stylesheet and user-specified
stylesheet rules) this rule came from. */
  String styleSheetId;

/** Rule selector data. */
  SelectorList selectorList;

/** Parent stylesheet's origin. */
  String origin;

/** Associated style declaration. */
  CSSStyle style;

/** Media list array (for rules involving media queries). The array enumerates media queries
starting with the innermost one, going outwards. */
  List<CSSMedia> media;
}

/** CSS stylesheet metainformation. */
class CSSStyleSheetHeader {
  CSSStyleSheetHeader(Map map) {
    styleSheetId = map['styleSheetId'];
    frameId = map['frameId'];
    sourceURL = map['sourceURL'];
    sourceMapURL = map['sourceMapURL'];
    origin = map['origin'];
    title = map['title'];
    ownerNode = map['ownerNode'];
    disabled = map['disabled'];
    hasSourceURL = map['hasSourceURL'];
    isInline = map['isInline'];
    startLine = map['startLine'];
    startColumn = map['startColumn'];
    length = map['length'];
  }

/** The stylesheet identifier. */
  String styleSheetId;

/** Owner frame identifier. */
  String frameId;

/** Stylesheet resource URL. */
  String sourceURL;

/** URL of source map associated with the stylesheet (if any). */
  String sourceMapURL;

/** Stylesheet origin. */
  String origin;

/** Stylesheet title. */
  String title;

/** The backend id for the owner node of the stylesheet. */
  int ownerNode;

/** Denotes whether the stylesheet is disabled. */
  bool disabled;

/** Whether the sourceURL field value comes from the sourceURL comment. */
  bool hasSourceURL;

/** Whether this stylesheet is created for STYLE tag by parser. This flag is not set for
document.written STYLE tags. */
  bool isInline;

/** Line offset of the stylesheet within the resource (zero based). */
  num startLine;

/** Column offset of the stylesheet within the resource (zero based). */
  num startColumn;

/** Size of the content (in characters). */
  num length;
}

/** Selector list data. */
class SelectorList {
  SelectorList(Map map) {
    selectors = map['selectors'] is Iterable
        ? map['selectors'].map((m) => new Value(m)).toList()
        : null;
    text = map['text'];
  }

/** Selectors in the list. */
  List<Value> selectors;

/** Rule selector text. */
  String text;
}

/** Data for a simple selector (these are delimited by commas in a selector list). */
class Value {
  Value(Map map) {
    text = map['text'];
    range = map.containsKey('range') ? new SourceRange(map['range']) : null;
  }

/** Value text. */
  String text;

/** Value range in the underlying resource (if available). */
  SourceRange range;
}

/** Match data for a CSS rule. */
class RuleMatch {
  RuleMatch(Map map) {
    rule = map.containsKey('rule') ? new CSSRule(map['rule']) : null;
    matchingSelectors = map['matchingSelectors'];
  }

/** CSS rule in the match. */
  CSSRule rule;

/** Matching selector indices in the rule's selectorList selectors (0-based). */
  List matchingSelectors;
}

/** Inherited CSS rule collection from ancestor node. */
class InheritedStyleEntry {
  InheritedStyleEntry(Map map) {
    inlineStyle = map.containsKey('inlineStyle')
        ? new CSSStyle(map['inlineStyle'])
        : null;
    matchedCSSRules = map['matchedCSSRules'] is Iterable
        ? map['matchedCSSRules'].map((m) => new RuleMatch(m)).toList()
        : null;
  }

/** The ancestor node's inline style, if any, in the style inheritance chain. */
  CSSStyle inlineStyle;

/** Matches of CSS rules matching the ancestor node in the style inheritance chain. */
  List<RuleMatch> matchedCSSRules;
}

/** CSS rule collection for a single pseudo style. */
class PseudoElementMatches {
  PseudoElementMatches(Map map) {
    pseudoType = map['pseudoType'];
    matches = map['matches'] is Iterable
        ? map['matches'].map((m) => new RuleMatch(m)).toList()
        : null;
  }

/** Pseudo element type. */
  String pseudoType;

/** Matches of CSS rules applicable to the pseudo style. */
  List<RuleMatch> matches;
}

/** Cached response */
class CachedResponse {
  CachedResponse(Map map) {
    body = map['body'];
  }

/** Entry content, base64-encoded. */
  String body;
}

/**  */
class Header {
  Header(Map map) {
    name = map['name'];
    value = map['value'];
  }

/**  */
  String name;

/**  */
  String value;
}

/** Cache identifier. */
class Cache {
  Cache(Map map) {
    cacheId = map['cacheId'];
    securityOrigin = map['securityOrigin'];
    cacheName = map['cacheName'];
  }

/** An opaque unique id of the cache. */
  String cacheId;

/** Security origin of the cache. */
  String securityOrigin;

/** The name of the cache. */
  String cacheName;
}

/** Data entry. */
class DataEntry {
  DataEntry(Map map) {
    requestURL = map['requestURL'];
    requestMethod = map['requestMethod'];
    requestHeaders = map['requestHeaders'] is Iterable
        ? map['requestHeaders'].map((m) => new Header(m)).toList()
        : null;
    responseTime = map['responseTime'];
    responseStatus = map['responseStatus'];
    responseStatusText = map['responseStatusText'];
    responseHeaders = map['responseHeaders'] is Iterable
        ? map['responseHeaders'].map((m) => new Header(m)).toList()
        : null;
  }

/** Request URL. */
  String requestURL;

/** Request method. */
  String requestMethod;

/** Request headers */
  List<Header> requestHeaders;

/** Number of seconds since epoch. */
  num responseTime;

/** HTTP response status code. */
  int responseStatus;

/** HTTP response status text. */
  String responseStatusText;

/** Response headers */
  List<Header> responseHeaders;
}

/** Rectangle. */
class Rect {
  Rect(Map map) {
    x = map['x'];
    y = map['y'];
    width = map['width'];
    height = map['height'];
  }

/** X coordinate */
  num x;

/** Y coordinate */
  num y;

/** Rectangle width */
  num width;

/** Rectangle height */
  num height;
}

/** CSS Shape Outside details. */
class ShapeOutsideInfo {
  ShapeOutsideInfo(Map map) {
    bounds = map['bounds'];
    shape = map['shape'];
    marginShape = map['marginShape'];
  }

/** Shape bounds */
  List bounds;

/** Shape coordinate details */
  List shape;

/** Margin shape bounds */
  List marginShape;
}

/** Box model. */
class BoxModel {
  BoxModel(Map map) {
    content = map['content'];
    padding = map['padding'];
    border = map['border'];
    margin = map['margin'];
    width = map['width'];
    height = map['height'];
    shapeOutside = map.containsKey('shapeOutside')
        ? new ShapeOutsideInfo(map['shapeOutside'])
        : null;
  }

/** Content box */
  List content;

/** Padding box */
  List padding;

/** Border box */
  List border;

/** Margin box */
  List margin;

/** Node width */
  int width;

/** Node height */
  int height;

/** Shape outside coordinates */
  ShapeOutsideInfo shapeOutside;
}

/** A structure holding an RGBA color. */
class RGBA {
  RGBA(Map map) {
    r = map['r'];
    g = map['g'];
    b = map['b'];
    a = map['a'];
  }

/** The red component, in the [0-255] range. */
  int r;

/** The green component, in the [0-255] range. */
  int g;

/** The blue component, in the [0-255] range. */
  int b;

/** The alpha component, in the [0-1] range (default: 1). */
  num a;
}

/** DOM interaction is implemented in terms of mirror objects that represent the actual DOM nodes.
DOMNode is a base node mirror type. */
class Node {
  Node(Map map) {
    nodeId = map['nodeId'];
    parentId = map['parentId'];
    backendNodeId = map['backendNodeId'];
    nodeType = map['nodeType'];
    nodeName = map['nodeName'];
    localName = map['localName'];
    nodeValue = map['nodeValue'];
    childNodeCount = map['childNodeCount'];
    children = map['children'] is Iterable
        ? map['children'].map((m) => new Node(m)).toList()
        : null;
    attributes = map['attributes'];
    documentURL = map['documentURL'];
    baseURL = map['baseURL'];
    publicId = map['publicId'];
    systemId = map['systemId'];
    internalSubset = map['internalSubset'];
    xmlVersion = map['xmlVersion'];
    name = map['name'];
    value = map['value'];
    pseudoType = map['pseudoType'];
    shadowRootType = map['shadowRootType'];
    frameId = map['frameId'];
    contentDocument = map.containsKey('contentDocument')
        ? new Node(map['contentDocument'])
        : null;
    shadowRoots = map['shadowRoots'] is Iterable
        ? map['shadowRoots'].map((m) => new Node(m)).toList()
        : null;
    templateContent = map.containsKey('templateContent')
        ? new Node(map['templateContent'])
        : null;
    pseudoElements = map['pseudoElements'] is Iterable
        ? map['pseudoElements'].map((m) => new Node(m)).toList()
        : null;
    importedDocument = map.containsKey('importedDocument')
        ? new Node(map['importedDocument'])
        : null;
    distributedNodes = map['distributedNodes'] is Iterable
        ? map['distributedNodes'].map((m) => new BackendNode(m)).toList()
        : null;
    isSVG = map['isSVG'];
  }

/** Node identifier that is passed into the rest of the DOM messages as the `nodeId`. Backend
will only push node with given `id` once. It is aware of all requested nodes and will only
fire DOM events for nodes known to the client. */
  int nodeId;

/** The id of the parent node if any. */
  int parentId;

/** The BackendNodeId for this node. */
  int backendNodeId;

/** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/** `Node`'s localName. */
  String localName;

/** `Node`'s nodeValue. */
  String nodeValue;

/** Child count for `Container` nodes. */
  int childNodeCount;

/** Child nodes of this node when requested with children. */
  List<Node> children;

/** Attributes of the `Element` node in the form of flat array `[name1, value1, name2, value2]`. */
  List attributes;

/** Document URL that `Document` or `FrameOwner` node points to. */
  String documentURL;

/** Base URL that `Document` or `FrameOwner` node uses for URL completion. */
  String baseURL;

/** `DocumentType`'s publicId. */
  String publicId;

/** `DocumentType`'s systemId. */
  String systemId;

/** `DocumentType`'s internalSubset. */
  String internalSubset;

/** `Document`'s XML version in case of XML documents. */
  String xmlVersion;

/** `Attr`'s name. */
  String name;

/** `Attr`'s value. */
  String value;

/** Pseudo element type for this node. */
  String pseudoType;

/** Shadow root type. */
  String shadowRootType;

/** Frame ID for frame owner elements. */
  String frameId;

/** Content document for frame owner elements. */
  Node contentDocument;

/** Shadow root list for given element host. */
  List<Node> shadowRoots;

/** Content document fragment for template elements. */
  Node templateContent;

/** Pseudo elements associated with this node. */
  List<Node> pseudoElements;

/** Import document for the HTMLImport links. */
  Node importedDocument;

/** Distributed nodes for given insertion point. */
  List<BackendNode> distributedNodes;

/** Whether the node is SVG. */
  bool isSVG;
}

/** Backend node with a friendly name. */
class BackendNode {
  BackendNode(Map map) {
    nodeType = map['nodeType'];
    nodeName = map['nodeName'];
    backendNodeId = map['backendNodeId'];
  }

/** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/**  */
  int backendNodeId;
}

/** Object event listener. */
class EventListener {
  EventListener(Map map) {
    type = map['type'];
    useCapture = map['useCapture'];
    passive = map['passive'];
    once = map['once'];
    scriptId = map['scriptId'];
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
    handler =
        map.containsKey('handler') ? new RemoteObject(map['handler']) : null;
    originalHandler = map.containsKey('originalHandler')
        ? new RemoteObject(map['originalHandler'])
        : null;
    backendNodeId = map['backendNodeId'];
  }

/** `EventListener`'s type. */
  String type;

/** `EventListener`'s useCapture. */
  bool useCapture;

/** `EventListener`'s passive flag. */
  bool passive;

/** `EventListener`'s once flag. */
  bool once;

/** Script id of the handler code. */
  String scriptId;

/** Line number in the script (0-based). */
  int lineNumber;

/** Column number in the script (0-based). */
  int columnNumber;

/** Event handler function value. */
  RemoteObject handler;

/** Event original handler function value. */
  RemoteObject originalHandler;

/** Node the listener is added to (if any). */
  int backendNodeId;
}

/** A name/value pair. */
class NameValue {
  NameValue(Map map) {
    name = map['name'];
    value = map['value'];
  }

/** Attribute/property name. */
  String name;

/** Attribute/property value. */
  String value;
}

/** A subset of the full ComputedStyle as defined by the request whitelist. */
class ComputedStyle {
  ComputedStyle(Map map) {
    properties = map['properties'] is Iterable
        ? map['properties'].map((m) => new NameValue(m)).toList()
        : null;
  }

/** Name/value pairs of computed style properties. */
  List<NameValue> properties;
}

/** Details of an element in the DOM tree with a LayoutObject. */
class LayoutTreeNode {
  LayoutTreeNode(Map map) {
    domNodeIndex = map['domNodeIndex'];
    boundingBox =
        map.containsKey('boundingBox') ? new Rect(map['boundingBox']) : null;
    layoutText = map['layoutText'];
    inlineTextNodes = map['inlineTextNodes'] is Iterable
        ? map['inlineTextNodes'].map((m) => new InlineTextBox(m)).toList()
        : null;
    styleIndex = map['styleIndex'];
  }

/** The index of the related DOM node in the `domNodes` array returned by `getSnapshot`. */
  int domNodeIndex;

/** The absolute position bounding box. */
  Rect boundingBox;

/** Contents of the LayoutText, if any. */
  String layoutText;

/** The post-layout inline text nodes, if any. */
  List<InlineTextBox> inlineTextNodes;

/** Index into the `computedStyles` array returned by `getSnapshot`. */
  int styleIndex;
}

/** Details of post layout rendered text positions. The exact layout should not be regarded as
stable and may change between versions. */
class InlineTextBox {
  InlineTextBox(Map map) {
    boundingBox =
        map.containsKey('boundingBox') ? new Rect(map['boundingBox']) : null;
    startCharacterIndex = map['startCharacterIndex'];
    numCharacters = map['numCharacters'];
  }

/** The absolute position bounding box. */
  Rect boundingBox;

/** The starting index in characters, for this post layout textbox substring. */
  int startCharacterIndex;

/** The number of characters in this post layout textbox substring. */
  int numCharacters;
}

/** A Node in the DOM tree. */
class DOMNode {
  DOMNode(Map map) {
    nodeType = map['nodeType'];
    nodeName = map['nodeName'];
    nodeValue = map['nodeValue'];
    textValue = map['textValue'];
    inputValue = map['inputValue'];
    inputChecked = map['inputChecked'];
    optionSelected = map['optionSelected'];
    backendNodeId = map['backendNodeId'];
    childNodeIndexes = map['childNodeIndexes'];
    attributes = map['attributes'] is Iterable
        ? map['attributes'].map((m) => new NameValue(m)).toList()
        : null;
    pseudoElementIndexes = map['pseudoElementIndexes'];
    layoutNodeIndex = map['layoutNodeIndex'];
    documentURL = map['documentURL'];
    baseURL = map['baseURL'];
    contentLanguage = map['contentLanguage'];
    documentEncoding = map['documentEncoding'];
    publicId = map['publicId'];
    systemId = map['systemId'];
    frameId = map['frameId'];
    contentDocumentIndex = map['contentDocumentIndex'];
    importedDocumentIndex = map['importedDocumentIndex'];
    templateContentIndex = map['templateContentIndex'];
    pseudoType = map['pseudoType'];
    isClickable = map['isClickable'];
    eventListeners = map['eventListeners'] is Iterable
        ? map['eventListeners'].map((m) => new EventListener(m)).toList()
        : null;
    currentSourceURL = map['currentSourceURL'];
  }

/** `Node`'s nodeType. */
  int nodeType;

/** `Node`'s nodeName. */
  String nodeName;

/** `Node`'s nodeValue. */
  String nodeValue;

/** Only set for textarea elements, contains the text value. */
  String textValue;

/** Only set for input elements, contains the input's associated text value. */
  String inputValue;

/** Only set for radio and checkbox input elements, indicates if the element has been checked */
  bool inputChecked;

/** Only set for option elements, indicates if the element has been selected */
  bool optionSelected;

/** `Node`'s id, corresponds to DOM.Node.backendNodeId. */
  int backendNodeId;

/** The indexes of the node's child nodes in the `domNodes` array returned by `getSnapshot`, if
any. */
  List childNodeIndexes;

/** Attributes of an `Element` node. */
  List<NameValue> attributes;

/** Indexes of pseudo elements associated with this node in the `domNodes` array returned by
`getSnapshot`, if any. */
  List pseudoElementIndexes;

/** The index of the node's related layout tree node in the `layoutTreeNodes` array returned by
`getSnapshot`, if any. */
  int layoutNodeIndex;

/** Document URL that `Document` or `FrameOwner` node points to. */
  String documentURL;

/** Base URL that `Document` or `FrameOwner` node uses for URL completion. */
  String baseURL;

/** Only set for documents, contains the document's content language. */
  String contentLanguage;

/** Only set for documents, contains the document's character set encoding. */
  String documentEncoding;

/** `DocumentType` node's publicId. */
  String publicId;

/** `DocumentType` node's systemId. */
  String systemId;

/** Frame ID for frame owner elements and also for the document node. */
  String frameId;

/** The index of a frame owner element's content document in the `domNodes` array returned by
`getSnapshot`, if any. */
  int contentDocumentIndex;

/** Index of the imported document's node of a link element in the `domNodes` array returned by
`getSnapshot`, if any. */
  int importedDocumentIndex;

/** Index of the content node of a template element in the `domNodes` array returned by
`getSnapshot`. */
  int templateContentIndex;

/** Type of a pseudo element node. */
  String pseudoType;

/** Whether this DOM node responds to mouse clicks. This includes nodes that have had click
event listeners attached via JavaScript as well as anchor tags that naturally navigate when
clicked. */
  bool isClickable;

/** Details of the node's event listeners, if any. */
  List<EventListener> eventListeners;

/** The selected url for nodes with a srcset attribute. */
  String currentSourceURL;
}

/** DOM Storage identifier. */
class StorageId {
  StorageId(Map map) {
    securityOrigin = map['securityOrigin'];
    isLocalStorage = map['isLocalStorage'];
  }

/** Security origin for the storage. */
  String securityOrigin;

/** Whether the storage is local storage (not session storage). */
  bool isLocalStorage;
}

/** Database error. */
class Error {
  Error(Map map) {
    message = map['message'];
    code = map['code'];
  }

/** Error message. */
  String message;

/** Error code. */
  int code;
}

/** Database object. */
class Database {
  Database(Map map) {
    id = map['id'];
    domain = map['domain'];
    name = map['name'];
    version = map['version'];
  }

/** Database ID. */
  String id;

/** Database domain. */
  String domain;

/** Database name. */
  String name;

/** Database version. */
  String version;
}

/// All possible values of Emulation.ScreenOrientation.type.
abstract class EmulationScreenOrientationTypeEnum {
  static const portraitPrimary = 'portraitPrimary';

  static const portraitSecondary = 'portraitSecondary';

  static const landscapePrimary = 'landscapePrimary';

  static const landscapeSecondary = 'landscapeSecondary';
}

/** Screen orientation. */
class ScreenOrientation {
  ScreenOrientation(Map map) {
    type = map['type'];
    angle = map['angle'];
  }

/** Orientation type. */
  String type;

/** Orientation angle. */
  int angle;
}

/// All possible values of HeadlessExperimental.ScreenshotParams.format.
abstract class HeadlessExperimentalScreenshotParamsFormatEnum {
  static const jpeg = 'jpeg';

  static const png = 'png';
}

/** Encoding options for a screenshot. */
class ScreenshotParams {
  ScreenshotParams(Map map) {
    format = map['format'];
    quality = map['quality'];
  }

/** Image compression format (defaults to png). */
  String format;

/** Compression quality from range [0..100] (jpeg only). */
  int quality;
}

/// All possible values of IndexedDB.KeyPath.type.
abstract class IndexedDBKeyPathTypeEnum {
  static const $null = 'null';

  static const string = 'string';

  static const array = 'array';
}

/** Key path. */
class KeyPath {
  KeyPath(Map map) {
    type = map['type'];
    string = map['string'];
    array = map['array'];
  }

/** Key path type. */
  String type;

/** String value. */
  String string;

/** Array value. */
  List array;
}

/** Key range. */
class KeyRange {
  KeyRange(Map map) {
    lower = map.containsKey('lower') ? new Key(map['lower']) : null;
    upper = map.containsKey('upper') ? new Key(map['upper']) : null;
    lowerOpen = map['lowerOpen'];
    upperOpen = map['upperOpen'];
  }

/** Lower bound. */
  Key lower;

/** Upper bound. */
  Key upper;

/** If true lower bound is open. */
  bool lowerOpen;

/** If true upper bound is open. */
  bool upperOpen;
}

/// All possible values of IndexedDB.Key.type.
abstract class IndexedDBKeyTypeEnum {
  static const number = 'number';

  static const string = 'string';

  static const date = 'date';

  static const array = 'array';
}

/** Key. */
class Key {
  Key(Map map) {
    type = map['type'];
    number = map['number'];
    string = map['string'];
    date = map['date'];
    array = map['array'] is Iterable
        ? map['array'].map((m) => new Key(m)).toList()
        : null;
  }

/** Key type. */
  String type;

/** Number value. */
  num number;

/** String value. */
  String string;

/** Date value. */
  num date;

/** Array value. */
  List<Key> array;
}

/** Object store index. */
class ObjectStoreIndex {
  ObjectStoreIndex(Map map) {
    name = map['name'];
    keyPath = map.containsKey('keyPath') ? new KeyPath(map['keyPath']) : null;
    unique = map['unique'];
    multiEntry = map['multiEntry'];
  }

/** Index name. */
  String name;

/** Index key path. */
  KeyPath keyPath;

/** If true, index is unique. */
  bool unique;

/** If true, index allows multiple entries for a key. */
  bool multiEntry;
}

/** Object store. */
class ObjectStore {
  ObjectStore(Map map) {
    name = map['name'];
    keyPath = map.containsKey('keyPath') ? new KeyPath(map['keyPath']) : null;
    autoIncrement = map['autoIncrement'];
    indexes = map['indexes'] is Iterable
        ? map['indexes'].map((m) => new ObjectStoreIndex(m)).toList()
        : null;
  }

/** Object store name. */
  String name;

/** Object store key path. */
  KeyPath keyPath;

/** If true, object store has auto increment flag set. */
  bool autoIncrement;

/** Indexes in this object store. */
  List<ObjectStoreIndex> indexes;
}

/** Database with an array of object stores. */
class DatabaseWithObjectStores {
  DatabaseWithObjectStores(Map map) {
    name = map['name'];
    version = map['version'];
    objectStores = map['objectStores'] is Iterable
        ? map['objectStores'].map((m) => new ObjectStore(m)).toList()
        : null;
  }

/** Database name. */
  String name;

/** Database version. */
  int version;

/** Object stores in this database. */
  List<ObjectStore> objectStores;
}

/**  */
class TouchPoint {
  TouchPoint(Map map) {
    x = map['x'];
    y = map['y'];
    radiusX = map['radiusX'];
    radiusY = map['radiusY'];
    rotationAngle = map['rotationAngle'];
    force = map['force'];
    id = map['id'];
  }

/** X coordinate of the event relative to the main frame's viewport in CSS pixels. */
  num x;

/** Y coordinate of the event relative to the main frame's viewport in CSS pixels. 0 refers to
the top of the viewport and Y increases as it proceeds towards the bottom of the viewport. */
  num y;

/** X radius of the touch area (default: 1.0). */
  num radiusX;

/** Y radius of the touch area (default: 1.0). */
  num radiusY;

/** Rotation angle (default: 0.0). */
  num rotationAngle;

/** Force (default: 1.0). */
  num force;

/** Identifier used to track touch sources between events, must be unique within an event. */
  num id;
}

/** Information about a compositing layer. */
class Layer {
  Layer(Map map) {
    layerId = map['layerId'];
    parentLayerId = map['parentLayerId'];
    backendNodeId = map['backendNodeId'];
    offsetX = map['offsetX'];
    offsetY = map['offsetY'];
    width = map['width'];
    height = map['height'];
    transform = map['transform'];
    anchorX = map['anchorX'];
    anchorY = map['anchorY'];
    anchorZ = map['anchorZ'];
    paintCount = map['paintCount'];
    drawsContent = map['drawsContent'];
    invisible = map['invisible'];
    scrollRects = map['scrollRects'] is Iterable
        ? map['scrollRects'].map((m) => new ScrollRect(m)).toList()
        : null;
    stickyPositionConstraint = map.containsKey('stickyPositionConstraint')
        ? new StickyPositionConstraint(map['stickyPositionConstraint'])
        : null;
  }

/** The unique id for this layer. */
  String layerId;

/** The id of parent (not present for root). */
  String parentLayerId;

/** The backend id for the node associated with this layer. */
  int backendNodeId;

/** Offset from parent layer, X coordinate. */
  num offsetX;

/** Offset from parent layer, Y coordinate. */
  num offsetY;

/** Layer width. */
  num width;

/** Layer height. */
  num height;

/** Transformation matrix for layer, default is identity matrix */
  List transform;

/** Transform anchor point X, absent if no transform specified */
  num anchorX;

/** Transform anchor point Y, absent if no transform specified */
  num anchorY;

/** Transform anchor point Z, absent if no transform specified */
  num anchorZ;

/** Indicates how many time this layer has painted. */
  int paintCount;

/** Indicates whether this layer hosts any content, rather than being used for
transform/scrolling purposes only. */
  bool drawsContent;

/** Set if layer is not visible. */
  bool invisible;

/** Rectangles scrolling on main thread only. */
  List<ScrollRect> scrollRects;

/** Sticky position constraint information */
  StickyPositionConstraint stickyPositionConstraint;
}

/** Serialized fragment of layer picture along with its offset within the layer. */
class PictureTile {
  PictureTile(Map map) {
    x = map['x'];
    y = map['y'];
    picture = map['picture'];
  }

/** Offset from owning layer left boundary */
  num x;

/** Offset from owning layer top boundary */
  num y;

/** Base64-encoded snapshot data. */
  String picture;
}

/** Sticky position constraints. */
class StickyPositionConstraint {
  StickyPositionConstraint(Map map) {
    stickyBoxRect = map.containsKey('stickyBoxRect')
        ? new Rect(map['stickyBoxRect'])
        : null;
    containingBlockRect = map.containsKey('containingBlockRect')
        ? new Rect(map['containingBlockRect'])
        : null;
    nearestLayerShiftingStickyBox = map['nearestLayerShiftingStickyBox'];
    nearestLayerShiftingContainingBlock =
        map['nearestLayerShiftingContainingBlock'];
  }

/** Layout rectangle of the sticky element before being shifted */
  Rect stickyBoxRect;

/** Layout rectangle of the containing block of the sticky element */
  Rect containingBlockRect;

/** The nearest sticky layer that shifts the sticky box */
  String nearestLayerShiftingStickyBox;

/** The nearest sticky layer that shifts the containing block */
  String nearestLayerShiftingContainingBlock;
}

/// All possible values of LayerTree.ScrollRect.type.
abstract class LayerTreeScrollRectTypeEnum {
  static const repaintsOnScroll = 'RepaintsOnScroll';

  static const touchEventHandler = 'TouchEventHandler';

  static const wheelEventHandler = 'WheelEventHandler';
}

/** Rectangle where scrolling happens on the main thread. */
class ScrollRect {
  ScrollRect(Map map) {
    rect = map.containsKey('rect') ? new Rect(map['rect']) : null;
    type = map['type'];
  }

/** Rectangle itself. */
  Rect rect;

/** Reason for rectangle to force scrolling on the main thread */
  String type;
}

/// All possible values of Log.ViolationSetting.name.
abstract class LogViolationSettingNameEnum {
  static const longTask = 'longTask';

  static const longLayout = 'longLayout';

  static const blockedEvent = 'blockedEvent';

  static const blockedParser = 'blockedParser';

  static const discouragedAPIUse = 'discouragedAPIUse';

  static const handler = 'handler';

  static const recurringHandler = 'recurringHandler';
}

/** Violation configuration setting. */
class ViolationSetting {
  ViolationSetting(Map map) {
    name = map['name'];
    threshold = map['threshold'];
  }

/** Violation type. */
  String name;

/** Time threshold to trigger upon. */
  num threshold;
}

/// All possible values of Log.LogEntry.source.
abstract class LogLogEntrySourceEnum {
  static const xml = 'xml';

  static const javascript = 'javascript';

  static const network = 'network';

  static const storage = 'storage';

  static const appcache = 'appcache';

  static const rendering = 'rendering';

  static const security = 'security';

  static const deprecation = 'deprecation';

  static const worker = 'worker';

  static const violation = 'violation';

  static const intervention = 'intervention';

  static const recommendation = 'recommendation';

  static const other = 'other';
}

/// All possible values of Log.LogEntry.level.
abstract class LogLogEntryLevelEnum {
  static const verbose = 'verbose';

  static const info = 'info';

  static const warning = 'warning';

  static const error = 'error';
}

/** Log entry. */
class LogEntry {
  LogEntry(Map map) {
    source = map['source'];
    level = map['level'];
    text = map['text'];
    timestamp = map['timestamp'];
    url = map['url'];
    lineNumber = map['lineNumber'];
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
    networkRequestId = map['networkRequestId'];
    workerId = map['workerId'];
    args = map['args'] is Iterable
        ? map['args'].map((m) => new RemoteObject(m)).toList()
        : null;
  }

/** Log entry source. */
  String source;

/** Log entry severity. */
  String level;

/** Logged text. */
  String text;

/** Timestamp when this entry was added. */
  num timestamp;

/** URL of the resource if known. */
  String url;

/** Line number in the resource. */
  int lineNumber;

/** JavaScript stack trace. */
  StackTrace stackTrace;

/** Identifier of the network request associated with this entry. */
  String networkRequestId;

/** Identifier of the worker associated with this entry. */
  String workerId;

/** Call arguments. */
  List<RemoteObject> args;
}

/** Array of heap profile samples. */
class SamplingProfile {
  SamplingProfile(Map map) {
    samples = map['samples'] is Iterable
        ? map['samples'].map((m) => new SamplingProfileNode(m)).toList()
        : null;
  }

/**  */
  List<SamplingProfileNode> samples;
}

/** Heap profile sample. */
class SamplingProfileNode {
  SamplingProfileNode(Map map) {
    size = map['size'];
    count = map['count'];
    stack = map['stack'];
  }

/** Size of the sampled allocation. */
  num size;

/** Number of sampled allocations of that size. */
  num count;

/** Execution stack at the point of allocation. */
  List stack;
}

/** Request pattern for interception. */
class RequestPattern {
  RequestPattern(Map map) {
    urlPattern = map['urlPattern'];
    resourceType = map['resourceType'];
    interceptionStage = map['interceptionStage'];
  }

/** Wildcards ('*' -> zero or more, '?' -> exactly one) are allowed. Escape character is
backslash. Omitting is equivalent to "*". */
  String urlPattern;

/** If set, only requests for matching resource types will be intercepted. */
  String resourceType;

/** Stage at wich to begin intercepting requests. Default is Request. */
  String interceptionStage;
}

/// All possible values of Network.AuthChallengeResponse.response.
abstract class NetworkAuthChallengeResponseResponseEnum {
  static const $default = 'Default';

  static const cancelAuth = 'CancelAuth';

  static const provideCredentials = 'ProvideCredentials';
}

/** Response to an AuthChallenge. */
class AuthChallengeResponse {
  AuthChallengeResponse(Map map) {
    response = map['response'];
    username = map['username'];
    password = map['password'];
  }

/** The decision on what to do in response to the authorization challenge.  Default means
deferring to the default behavior of the net stack, which will likely either the Cancel
authentication or display a popup dialog box. */
  String response;

/** The username to provide, possibly empty. Should only be set if response is
ProvideCredentials. */
  String username;

/** The password to provide, possibly empty. Should only be set if response is
ProvideCredentials. */
  String password;
}

/// All possible values of Network.AuthChallenge.source.
abstract class NetworkAuthChallengeSourceEnum {
  static const server = 'Server';

  static const proxy = 'Proxy';
}

/** Authorization challenge for HTTP status code 401 or 407. */
class AuthChallenge {
  AuthChallenge(Map map) {
    source = map['source'];
    origin = map['origin'];
    scheme = map['scheme'];
    realm = map['realm'];
  }

/** Source of the authentication challenge. */
  String source;

/** Origin of the challenger. */
  String origin;

/** The authentication scheme used, such as basic or digest */
  String scheme;

/** The realm of the challenge. May be empty. */
  String realm;
}

/** Cookie parameter object */
class CookieParam {
  CookieParam(Map map) {
    name = map['name'];
    value = map['value'];
    url = map['url'];
    domain = map['domain'];
    path = map['path'];
    secure = map['secure'];
    httpOnly = map['httpOnly'];
    sameSite = map['sameSite'];
    expires = map['expires'];
  }

/** Cookie name. */
  String name;

/** Cookie value. */
  String value;

/** The request-URI to associate with the setting of the cookie. This value can affect the
default domain and path values of the created cookie. */
  String url;

/** Cookie domain. */
  String domain;

/** Cookie path. */
  String path;

/** True if cookie is secure. */
  bool secure;

/** True if cookie is http-only. */
  bool httpOnly;

/** Cookie SameSite type. */
  String sameSite;

/** Cookie expiration date, session cookie if not set */
  num expires;
}

/** Cookie object */
class Cookie {
  Cookie(Map map) {
    name = map['name'];
    value = map['value'];
    domain = map['domain'];
    path = map['path'];
    expires = map['expires'];
    size = map['size'];
    httpOnly = map['httpOnly'];
    secure = map['secure'];
    session = map['session'];
    sameSite = map['sameSite'];
  }

/** Cookie name. */
  String name;

/** Cookie value. */
  String value;

/** Cookie domain. */
  String domain;

/** Cookie path. */
  String path;

/** Cookie expiration date as the number of seconds since the UNIX epoch. */
  num expires;

/** Cookie size. */
  int size;

/** True if cookie is http-only. */
  bool httpOnly;

/** True if cookie is secure. */
  bool secure;

/** True in case of session cookie. */
  bool session;

/** Cookie SameSite type. */
  String sameSite;
}

/// All possible values of Network.Initiator.type.
abstract class NetworkInitiatorTypeEnum {
  static const parser = 'parser';

  static const script = 'script';

  static const preload = 'preload';

  static const other = 'other';
}

/** Information about the request initiator. */
class Initiator {
  Initiator(Map map) {
    type = map['type'];
    stack = map.containsKey('stack') ? new StackTrace(map['stack']) : null;
    url = map['url'];
    lineNumber = map['lineNumber'];
  }

/** Type of this initiator. */
  String type;

/** Initiator JavaScript stack trace, set for Script only. */
  StackTrace stack;

/** Initiator URL, set for Parser type or for Script type (when script is importing module). */
  String url;

/** Initiator line number, set for Parser type or for Script type (when script is importing
module) (0-based). */
  num lineNumber;
}

/** Information about the cached resource. */
class CachedResource {
  CachedResource(Map map) {
    url = map['url'];
    type = map['type'];
    response =
        map.containsKey('response') ? new Response(map['response']) : null;
    bodySize = map['bodySize'];
  }

/** Resource URL. This is the url of the original network request. */
  String url;

/** Type of this resource. */
  String type;

/** Cached response data. */
  Response response;

/** Cached response body size. */
  num bodySize;
}

/** WebSocket frame data. */
class WebSocketFrame {
  WebSocketFrame(Map map) {
    opcode = map['opcode'];
    mask = map['mask'];
    payloadData = map['payloadData'];
  }

/** WebSocket frame opcode. */
  num opcode;

/** WebSocke frame mask. */
  bool mask;

/** WebSocke frame payload data. */
  String payloadData;
}

/** WebSocket response data. */
class WebSocketResponse {
  WebSocketResponse(Map map) {
    status = map['status'];
    statusText = map['statusText'];
    headers = map.containsKey('headers') ? new Headers(map['headers']) : null;
    headersText = map['headersText'];
    requestHeaders = map.containsKey('requestHeaders')
        ? new Headers(map['requestHeaders'])
        : null;
    requestHeadersText = map['requestHeadersText'];
  }

/** HTTP response status code. */
  int status;

/** HTTP response status text. */
  String statusText;

/** HTTP response headers. */
  Headers headers;

/** HTTP response headers text. */
  String headersText;

/** HTTP request headers. */
  Headers requestHeaders;

/** HTTP request headers text. */
  String requestHeadersText;
}

/** WebSocket request data. */
class WebSocketRequest {
  WebSocketRequest(Map map) {
    headers = map.containsKey('headers') ? new Headers(map['headers']) : null;
  }

/** HTTP request headers. */
  Headers headers;
}

/** HTTP response data. */
class Response {
  Response(Map map) {
    url = map['url'];
    status = map['status'];
    statusText = map['statusText'];
    headers = map.containsKey('headers') ? new Headers(map['headers']) : null;
    headersText = map['headersText'];
    mimeType = map['mimeType'];
    requestHeaders = map.containsKey('requestHeaders')
        ? new Headers(map['requestHeaders'])
        : null;
    requestHeadersText = map['requestHeadersText'];
    connectionReused = map['connectionReused'];
    connectionId = map['connectionId'];
    remoteIPAddress = map['remoteIPAddress'];
    remotePort = map['remotePort'];
    fromDiskCache = map['fromDiskCache'];
    fromServiceWorker = map['fromServiceWorker'];
    encodedDataLength = map['encodedDataLength'];
    timing =
        map.containsKey('timing') ? new ResourceTiming(map['timing']) : null;
    protocol = map['protocol'];
    securityState = map['securityState'];
    securityDetails = map.containsKey('securityDetails')
        ? new SecurityDetails(map['securityDetails'])
        : null;
  }

/** Response URL. This URL can be different from CachedResource.url in case of redirect. */
  String url;

/** HTTP response status code. */
  int status;

/** HTTP response status text. */
  String statusText;

/** HTTP response headers. */
  Headers headers;

/** HTTP response headers text. */
  String headersText;

/** Resource mimeType as determined by the browser. */
  String mimeType;

/** Refined HTTP request headers that were actually transmitted over the network. */
  Headers requestHeaders;

/** HTTP request headers text. */
  String requestHeadersText;

/** Specifies whether physical connection was actually reused for this request. */
  bool connectionReused;

/** Physical connection id that was actually used for this request. */
  num connectionId;

/** Remote IP address. */
  String remoteIPAddress;

/** Remote port. */
  int remotePort;

/** Specifies that the request was served from the disk cache. */
  bool fromDiskCache;

/** Specifies that the request was served from the ServiceWorker. */
  bool fromServiceWorker;

/** Total number of bytes received for this request so far. */
  num encodedDataLength;

/** Timing information for the given request. */
  ResourceTiming timing;

/** Protocol used to fetch this request. */
  String protocol;

/** Security state of the request resource. */
  String securityState;

/** Security details for the request. */
  SecurityDetails securityDetails;
}

/** Security details about a request. */
class SecurityDetails {
  SecurityDetails(Map map) {
    protocol = map['protocol'];
    keyExchange = map['keyExchange'];
    keyExchangeGroup = map['keyExchangeGroup'];
    cipher = map['cipher'];
    mac = map['mac'];
    certificateId = map['certificateId'];
    subjectName = map['subjectName'];
    sanList = map['sanList'];
    issuer = map['issuer'];
    validFrom = map['validFrom'];
    validTo = map['validTo'];
    signedCertificateTimestampList =
        map['signedCertificateTimestampList'] is Iterable
            ? map['signedCertificateTimestampList']
                .map((m) => new SignedCertificateTimestamp(m))
                .toList()
            : null;
  }

/** Protocol name (e.g. "TLS 1.2" or "QUIC"). */
  String protocol;

/** Key Exchange used by the connection, or the empty string if not applicable. */
  String keyExchange;

/** (EC)DH group used by the connection, if applicable. */
  String keyExchangeGroup;

/** Cipher name. */
  String cipher;

/** TLS MAC. Note that AEAD ciphers do not have separate MACs. */
  String mac;

/** Certificate ID value. */
  int certificateId;

/** Certificate subject name. */
  String subjectName;

/** Subject Alternative Name (SAN) DNS names and IP addresses. */
  List sanList;

/** Name of the issuing CA. */
  String issuer;

/** Certificate valid from date. */
  num validFrom;

/** Certificate valid to (expiration) date */
  num validTo;

/** List of signed certificate timestamps (SCTs). */
  List<SignedCertificateTimestamp> signedCertificateTimestampList;
}

/** Details of a signed certificate timestamp (SCT). */
class SignedCertificateTimestamp {
  SignedCertificateTimestamp(Map map) {
    status = map['status'];
    origin = map['origin'];
    logDescription = map['logDescription'];
    logId = map['logId'];
    timestamp = map['timestamp'];
    hashAlgorithm = map['hashAlgorithm'];
    signatureAlgorithm = map['signatureAlgorithm'];
    signatureData = map['signatureData'];
  }

/** Validation status. */
  String status;

/** Origin. */
  String origin;

/** Log name / description. */
  String logDescription;

/** Log ID. */
  String logId;

/** Issuance date. */
  num timestamp;

/** Hash algorithm. */
  String hashAlgorithm;

/** Signature algorithm. */
  String signatureAlgorithm;

/** Signature data. */
  String signatureData;
}

/// All possible values of Network.Request.referrerPolicy.
abstract class NetworkRequestReferrerPolicyEnum {
  static const unsafeUrl = 'unsafe-url';

  static const noReferrerWhenDowngrade = 'no-referrer-when-downgrade';

  static const noReferrer = 'no-referrer';

  static const origin = 'origin';

  static const originWhenCrossOrigin = 'origin-when-cross-origin';

  static const sameOrigin = 'same-origin';

  static const strictOrigin = 'strict-origin';

  static const strictOriginWhenCrossOrigin = 'strict-origin-when-cross-origin';
}

/** HTTP request data. */
class Request {
  Request(Map map) {
    url = map['url'];
    method = map['method'];
    headers = map.containsKey('headers') ? new Headers(map['headers']) : null;
    postData = map['postData'];
    hasPostData = map['hasPostData'];
    mixedContentType = map['mixedContentType'];
    initialPriority = map['initialPriority'];
    referrerPolicy = map['referrerPolicy'];
    isLinkPreload = map['isLinkPreload'];
  }

/** Request URL. */
  String url;

/** HTTP request method. */
  String method;

/** HTTP request headers. */
  Headers headers;

/** HTTP POST request data. */
  String postData;

/** True when the request has POST data. Note that postData might still be omitted when this flag is true when the data is too long. */
  bool hasPostData;

/** The mixed content type of the request. */
  String mixedContentType;

/** Priority of the resource request at the time request is sent. */
  String initialPriority;

/** The referrer policy of the request, as defined in https://www.w3.org/TR/referrer-policy/ */
  String referrerPolicy;

/** Whether is loaded via link preload. */
  bool isLinkPreload;
}

/** Timing information for the request. */
class ResourceTiming {
  ResourceTiming(Map map) {
    requestTime = map['requestTime'];
    proxyStart = map['proxyStart'];
    proxyEnd = map['proxyEnd'];
    dnsStart = map['dnsStart'];
    dnsEnd = map['dnsEnd'];
    connectStart = map['connectStart'];
    connectEnd = map['connectEnd'];
    sslStart = map['sslStart'];
    sslEnd = map['sslEnd'];
    workerStart = map['workerStart'];
    workerReady = map['workerReady'];
    sendStart = map['sendStart'];
    sendEnd = map['sendEnd'];
    pushStart = map['pushStart'];
    pushEnd = map['pushEnd'];
    receiveHeadersEnd = map['receiveHeadersEnd'];
  }

/** Timing's requestTime is a baseline in seconds, while the other numbers are ticks in
milliseconds relatively to this requestTime. */
  num requestTime;

/** Started resolving proxy. */
  num proxyStart;

/** Finished resolving proxy. */
  num proxyEnd;

/** Started DNS address resolve. */
  num dnsStart;

/** Finished DNS address resolve. */
  num dnsEnd;

/** Started connecting to the remote host. */
  num connectStart;

/** Connected to the remote host. */
  num connectEnd;

/** Started SSL handshake. */
  num sslStart;

/** Finished SSL handshake. */
  num sslEnd;

/** Started running ServiceWorker. */
  num workerStart;

/** Finished Starting ServiceWorker. */
  num workerReady;

/** Started sending request. */
  num sendStart;

/** Finished sending request. */
  num sendEnd;

/** Time the server started pushing request. */
  num pushStart;

/** Time the server finished pushing request. */
  num pushEnd;

/** Finished receiving response headers. */
  num receiveHeadersEnd;
}

/** Request / response headers as keys / values of JSON object. */
class Headers {
  Headers(_);
}

/** Configuration data for the highlighting of page elements. */
class HighlightConfig {
  HighlightConfig(Map map) {
    showInfo = map['showInfo'];
    showRulers = map['showRulers'];
    showExtensionLines = map['showExtensionLines'];
    displayAsMaterial = map['displayAsMaterial'];
    contentColor =
        map.containsKey('contentColor') ? new RGBA(map['contentColor']) : null;
    paddingColor =
        map.containsKey('paddingColor') ? new RGBA(map['paddingColor']) : null;
    borderColor =
        map.containsKey('borderColor') ? new RGBA(map['borderColor']) : null;
    marginColor =
        map.containsKey('marginColor') ? new RGBA(map['marginColor']) : null;
    eventTargetColor = map.containsKey('eventTargetColor')
        ? new RGBA(map['eventTargetColor'])
        : null;
    shapeColor =
        map.containsKey('shapeColor') ? new RGBA(map['shapeColor']) : null;
    shapeMarginColor = map.containsKey('shapeMarginColor')
        ? new RGBA(map['shapeMarginColor'])
        : null;
    selectorList = map['selectorList'];
    cssGridColor =
        map.containsKey('cssGridColor') ? new RGBA(map['cssGridColor']) : null;
  }

/** Whether the node info tooltip should be shown (default: false). */
  bool showInfo;

/** Whether the rulers should be shown (default: false). */
  bool showRulers;

/** Whether the extension lines from node to the rulers should be shown (default: false). */
  bool showExtensionLines;

/**  */
  bool displayAsMaterial;

/** The content box highlight fill color (default: transparent). */
  RGBA contentColor;

/** The padding highlight fill color (default: transparent). */
  RGBA paddingColor;

/** The border highlight fill color (default: transparent). */
  RGBA borderColor;

/** The margin highlight fill color (default: transparent). */
  RGBA marginColor;

/** The event target element highlight fill color (default: transparent). */
  RGBA eventTargetColor;

/** The shape outside fill color (default: transparent). */
  RGBA shapeColor;

/** The shape margin fill color (default: transparent). */
  RGBA shapeMarginColor;

/** Selectors to highlight relevant nodes. */
  String selectorList;

/** The grid layout color (default: transparent). */
  RGBA cssGridColor;
}

/** Viewport for capturing screenshot. */
class Viewport {
  Viewport(Map map) {
    x = map['x'];
    y = map['y'];
    width = map['width'];
    height = map['height'];
    scale = map['scale'];
  }

/** X offset in CSS pixels. */
  num x;

/** Y offset in CSS pixels */
  num y;

/** Rectangle width in CSS pixels */
  num width;

/** Rectangle height in CSS pixels */
  num height;

/** Page scale factor. */
  num scale;
}

/** Visual viewport position, dimensions, and scale. */
class VisualViewport {
  VisualViewport(Map map) {
    offsetX = map['offsetX'];
    offsetY = map['offsetY'];
    pageX = map['pageX'];
    pageY = map['pageY'];
    clientWidth = map['clientWidth'];
    clientHeight = map['clientHeight'];
    scale = map['scale'];
  }

/** Horizontal offset relative to the layout viewport (CSS pixels). */
  num offsetX;

/** Vertical offset relative to the layout viewport (CSS pixels). */
  num offsetY;

/** Horizontal offset relative to the document (CSS pixels). */
  num pageX;

/** Vertical offset relative to the document (CSS pixels). */
  num pageY;

/** Width (CSS pixels), excludes scrollbar if present. */
  num clientWidth;

/** Height (CSS pixels), excludes scrollbar if present. */
  num clientHeight;

/** Scale relative to the ideal viewport (size at width=device-width). */
  num scale;
}

/** Layout viewport position and dimensions. */
class LayoutViewport {
  LayoutViewport(Map map) {
    pageX = map['pageX'];
    pageY = map['pageY'];
    clientWidth = map['clientWidth'];
    clientHeight = map['clientHeight'];
  }

/** Horizontal offset relative to the document (CSS pixels). */
  int pageX;

/** Vertical offset relative to the document (CSS pixels). */
  int pageY;

/** Width (CSS pixels), excludes scrollbar if present. */
  int clientWidth;

/** Height (CSS pixels), excludes scrollbar if present. */
  int clientHeight;
}

/** Error while paring app manifest. */
class AppManifestError {
  AppManifestError(Map map) {
    message = map['message'];
    critical = map['critical'];
    line = map['line'];
    column = map['column'];
  }

/** Error message. */
  String message;

/** If criticial, this is a non-recoverable parse error. */
  int critical;

/** Error line. */
  int line;

/** Error column. */
  int column;
}

/** Screencast frame metadata. */
class ScreencastFrameMetadata {
  ScreencastFrameMetadata(Map map) {
    offsetTop = map['offsetTop'];
    pageScaleFactor = map['pageScaleFactor'];
    deviceWidth = map['deviceWidth'];
    deviceHeight = map['deviceHeight'];
    scrollOffsetX = map['scrollOffsetX'];
    scrollOffsetY = map['scrollOffsetY'];
    timestamp = map['timestamp'];
  }

/** Top offset in DIP. */
  num offsetTop;

/** Page scale factor. */
  num pageScaleFactor;

/** Device screen width in DIP. */
  num deviceWidth;

/** Device screen height in DIP. */
  num deviceHeight;

/** Position of horizontal scroll in CSS pixels. */
  num scrollOffsetX;

/** Position of vertical scroll in CSS pixels. */
  num scrollOffsetY;

/** Frame swap timestamp. */
  num timestamp;
}

/** Navigation history entry. */
class NavigationEntry {
  NavigationEntry(Map map) {
    id = map['id'];
    url = map['url'];
    userTypedURL = map['userTypedURL'];
    title = map['title'];
    transitionType = map['transitionType'];
  }

/** Unique id of the navigation history entry. */
  int id;

/** URL of the navigation history entry. */
  String url;

/** URL that the user typed in the url bar. */
  String userTypedURL;

/** Title of the navigation history entry. */
  String title;

/** Transition type. */
  String transitionType;
}

/** Information about the Frame hierarchy. */
class FrameTree {
  FrameTree(Map map) {
    frame = map.containsKey('frame') ? new Frame(map['frame']) : null;
    childFrames = map['childFrames'] is Iterable
        ? map['childFrames'].map((m) => new FrameTree(m)).toList()
        : null;
  }

/** Frame information for this tree item. */
  Frame frame;

/** Child frames. */
  List<FrameTree> childFrames;
}

/** Information about the Frame hierarchy along with their cached resources. */
class FrameResourceTree {
  FrameResourceTree(Map map) {
    frame = map.containsKey('frame') ? new Frame(map['frame']) : null;
    childFrames = map['childFrames'] is Iterable
        ? map['childFrames'].map((m) => new FrameResourceTree(m)).toList()
        : null;
    resources = map['resources'] is Iterable
        ? map['resources'].map((m) => new FrameResource(m)).toList()
        : null;
  }

/** Frame information for this tree item. */
  Frame frame;

/** Child frames. */
  List<FrameResourceTree> childFrames;

/** Information about frame resources. */
  List<FrameResource> resources;
}

/** Information about the Resource on the page. */
class FrameResource {
  FrameResource(Map map) {
    url = map['url'];
    type = map['type'];
    mimeType = map['mimeType'];
    lastModified = map['lastModified'];
    contentSize = map['contentSize'];
    failed = map['failed'];
    canceled = map['canceled'];
  }

/** Resource URL. */
  String url;

/** Type of this resource. */
  String type;

/** Resource mimeType as determined by the browser. */
  String mimeType;

/** last-modified timestamp as reported by server. */
  num lastModified;

/** Resource content size. */
  num contentSize;

/** True if the resource failed to load. */
  bool failed;

/** True if the resource was canceled during loading. */
  bool canceled;
}

/** Information about the Frame on the page. */
class Frame {
  Frame(Map map) {
    id = map['id'];
    parentId = map['parentId'];
    loaderId = map['loaderId'];
    name = map['name'];
    url = map['url'];
    securityOrigin = map['securityOrigin'];
    mimeType = map['mimeType'];
    unreachableUrl = map['unreachableUrl'];
  }

/** Frame unique identifier. */
  String id;

/** Parent frame identifier. */
  String parentId;

/** Identifier of the loader associated with this frame. */
  String loaderId;

/** Frame's name as specified in the tag. */
  String name;

/** Frame document's URL. */
  String url;

/** Frame document's security origin. */
  String securityOrigin;

/** Frame document's mimeType as determined by the browser. */
  String mimeType;

/** If the frame failed to load, this contains the URL that could not be loaded. */
  String unreachableUrl;
}

/** Run-time execution metric. */
class Metric {
  Metric(Map map) {
    name = map['name'];
    value = map['value'];
  }

/** Metric name. */
  String name;

/** Metric value. */
  num value;
}

/** Information about insecure content on the page. */
class InsecureContentStatus {
  InsecureContentStatus(Map map) {
    ranMixedContent = map['ranMixedContent'];
    displayedMixedContent = map['displayedMixedContent'];
    containedMixedForm = map['containedMixedForm'];
    ranContentWithCertErrors = map['ranContentWithCertErrors'];
    displayedContentWithCertErrors = map['displayedContentWithCertErrors'];
    ranInsecureContentStyle = map['ranInsecureContentStyle'];
    displayedInsecureContentStyle = map['displayedInsecureContentStyle'];
  }

/** True if the page was loaded over HTTPS and ran mixed (HTTP) content such as scripts. */
  bool ranMixedContent;

/** True if the page was loaded over HTTPS and displayed mixed (HTTP) content such as images. */
  bool displayedMixedContent;

/** True if the page was loaded over HTTPS and contained a form targeting an insecure url. */
  bool containedMixedForm;

/** True if the page was loaded over HTTPS without certificate errors, and ran content such as
scripts that were loaded with certificate errors. */
  bool ranContentWithCertErrors;

/** True if the page was loaded over HTTPS without certificate errors, and displayed content
such as images that were loaded with certificate errors. */
  bool displayedContentWithCertErrors;

/** Security state representing a page that ran insecure content. */
  String ranInsecureContentStyle;

/** Security state representing a page that displayed insecure content. */
  String displayedInsecureContentStyle;
}

/** An explanation of an factor contributing to the security state. */
class SecurityStateExplanation {
  SecurityStateExplanation(Map map) {
    securityState = map['securityState'];
    title = map['title'];
    summary = map['summary'];
    description = map['description'];
    mixedContentType = map['mixedContentType'];
    certificate = map['certificate'];
  }

/** Security state representing the severity of the factor being explained. */
  String securityState;

/** Title describing the type of factor. */
  String title;

/** Short phrase describing the type of factor. */
  String summary;

/** Full text explanation of the factor. */
  String description;

/** The type of mixed content described by the explanation. */
  String mixedContentType;

/** Page certificate. */
  List certificate;
}

/** ServiceWorker error message. */
class ServiceWorkerErrorMessage {
  ServiceWorkerErrorMessage(Map map) {
    errorMessage = map['errorMessage'];
    registrationId = map['registrationId'];
    versionId = map['versionId'];
    sourceURL = map['sourceURL'];
    lineNumber = map['lineNumber'];
    columnNumber = map['columnNumber'];
  }

/**  */
  String errorMessage;

/**  */
  String registrationId;

/**  */
  String versionId;

/**  */
  String sourceURL;

/**  */
  int lineNumber;

/**  */
  int columnNumber;
}

/** ServiceWorker version. */
class ServiceWorkerVersion {
  ServiceWorkerVersion(Map map) {
    versionId = map['versionId'];
    registrationId = map['registrationId'];
    scriptURL = map['scriptURL'];
    runningStatus = map['runningStatus'];
    status = map['status'];
    scriptLastModified = map['scriptLastModified'];
    scriptResponseTime = map['scriptResponseTime'];
    controlledClients = map['controlledClients'];
    targetId = map['targetId'];
  }

/**  */
  String versionId;

/**  */
  String registrationId;

/**  */
  String scriptURL;

/**  */
  String runningStatus;

/**  */
  String status;

/** The Last-Modified header value of the main script. */
  num scriptLastModified;

/** The time at which the response headers of the main script were received from the server.
For cached script it is the last time the cache entry was validated. */
  num scriptResponseTime;

/**  */
  List<String> controlledClients;

/**  */
  String targetId;
}

/** ServiceWorker registration. */
class ServiceWorkerRegistration {
  ServiceWorkerRegistration(Map map) {
    registrationId = map['registrationId'];
    scopeURL = map['scopeURL'];
    isDeleted = map['isDeleted'];
  }

/**  */
  String registrationId;

/**  */
  String scopeURL;

/**  */
  bool isDeleted;
}

/** Usage for a storage type. */
class UsageForType {
  UsageForType(Map map) {
    storageType = map['storageType'];
    usage = map['usage'];
  }

/** Name of storage type. */
  String storageType;

/** Storage usage (bytes). */
  num usage;
}

/** Provides information about the GPU(s) on the system. */
class GPUInfo {
  GPUInfo(Map map) {
    devices = map['devices'] is Iterable
        ? map['devices'].map((m) => new GPUDevice(m)).toList()
        : null;
    auxAttributes = map['auxAttributes'];
    featureStatus = map['featureStatus'];
    driverBugWorkarounds = map['driverBugWorkarounds'];
  }

/** The graphics devices on the system. Element 0 is the primary GPU. */
  List<GPUDevice> devices;

/** An optional dictionary of additional GPU related attributes. */
  Map<String, dynamic> auxAttributes;

/** An optional dictionary of graphics features and their status. */
  Map<String, dynamic> featureStatus;

/** An optional array of GPU driver bug workarounds. */
  List driverBugWorkarounds;
}

/** Describes a single graphics processor (GPU). */
class GPUDevice {
  GPUDevice(Map map) {
    vendorId = map['vendorId'];
    deviceId = map['deviceId'];
    vendorString = map['vendorString'];
    deviceString = map['deviceString'];
  }

/** PCI ID of the GPU vendor, if available; 0 otherwise. */
  num vendorId;

/** PCI ID of the GPU device, if available; 0 otherwise. */
  num deviceId;

/** String description of the GPU vendor, if the PCI ID is not available. */
  String vendorString;

/** String description of the GPU device, if the PCI ID is not available. */
  String deviceString;
}

/**  */
class RemoteLocation {
  RemoteLocation(Map map) {
    host = map['host'];
    port = map['port'];
  }

/**  */
  String host;

/**  */
  int port;
}

/**  */
class TargetInfo {
  TargetInfo(Map map) {
    targetId = map['targetId'];
    type = map['type'];
    title = map['title'];
    url = map['url'];
    attached = map['attached'];
    openerId = map['openerId'];
  }

/**  */
  String targetId;

/**  */
  String type;

/**  */
  String title;

/**  */
  String url;

/** Whether the target has an attached client. */
  bool attached;

/** Opener target Id */
  String openerId;
}

/// All possible values of Tracing.TraceConfig.recordMode.
abstract class TracingTraceConfigRecordModeEnum {
  static const recordUntilFull = 'recordUntilFull';

  static const recordContinuously = 'recordContinuously';

  static const recordAsMuchAsPossible = 'recordAsMuchAsPossible';

  static const echoToConsole = 'echoToConsole';
}

/**  */
class TraceConfig {
  TraceConfig(Map map) {
    recordMode = map['recordMode'];
    enableSampling = map['enableSampling'];
    enableSystrace = map['enableSystrace'];
    enableArgumentFilter = map['enableArgumentFilter'];
    includedCategories = map['includedCategories'];
    excludedCategories = map['excludedCategories'];
    syntheticDelays = map['syntheticDelays'];
    memoryDumpConfig = map.containsKey('memoryDumpConfig')
        ? new MemoryDumpConfig(map['memoryDumpConfig'])
        : null;
  }

/** Controls how the trace buffer stores data. */
  String recordMode;

/** Turns on JavaScript stack sampling. */
  bool enableSampling;

/** Turns on system tracing. */
  bool enableSystrace;

/** Turns on argument filter. */
  bool enableArgumentFilter;

/** Included category filters. */
  List includedCategories;

/** Excluded category filters. */
  List excludedCategories;

/** Configuration to synthesize the delays in tracing. */
  List syntheticDelays;

/** Configuration for memory dump triggers. Used only when "memory-infra" category is enabled. */
  MemoryDumpConfig memoryDumpConfig;
}

/** Configuration for memory dump. Used only when "memory-infra" category is enabled. */
class MemoryDumpConfig {
  MemoryDumpConfig(_);
}

/// Fired on `Console.messageAdded`.
class ConsoleMessageAddedEvent {
  ConsoleMessageAddedEvent(Map map) {
    message =
        map.containsKey('message') ? new ConsoleMessage(map['message']) : null;
  }

/** Console message that has been added. */
  ConsoleMessage message;
}

class DevToolsConsole {
  DevToolsConsole(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<ConsoleMessageAddedEvent> _onMessageAdded =
      new dart_async.StreamController.broadcast();

/** Does nothing. */
  dart_async.Future clearMessages() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.clearMessages', params);
  }

/** Disables console domain, prevents further console messages from being reported to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.disable', params);
  }

/** Enables console domain, sends the messages collected so far to the client by means of the
`messageAdded` notification. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Console.enable', params);
  }

/** Broadcast stream: Issued when new console message is added. */
  dart_async.Stream<ConsoleMessageAddedEvent> get onMessageAdded =>
      _onMessageAdded.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Console.messageAdded', (json_rpc_2.Parameters params) {
      _onMessageAdded.add(new ConsoleMessageAddedEvent(params.asMap));
    });
  }

  void _close() {
    _onMessageAdded.close();
  }
}

class DebuggerEnableResponse {
  DebuggerEnableResponse(Map map) {
    debuggerId = map['debuggerId'];
  }

  String debuggerId;
}

class DebuggerEvaluateOnCallFrameResponse {
  DebuggerEvaluateOnCallFrameResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class DebuggerGetPossibleBreakpointsResponse {
  DebuggerGetPossibleBreakpointsResponse(Map map) {
    locations = map['locations'] is Iterable
        ? map['locations'].map((m) => new BreakLocation(m)).toList()
        : null;
  }

  List<BreakLocation> locations;
}

class DebuggerGetScriptSourceResponse {
  DebuggerGetScriptSourceResponse(Map map) {
    scriptSource = map['scriptSource'];
  }

  String scriptSource;
}

class DebuggerGetStackTraceResponse {
  DebuggerGetStackTraceResponse(Map map) {
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
  }

  StackTrace stackTrace;
}

class DebuggerRestartFrameResponse {
  DebuggerRestartFrameResponse(Map map) {
    callFrames = map['callFrames'] is Iterable
        ? map['callFrames'].map((m) => new CallFrame(m)).toList()
        : null;
    asyncStackTrace = map.containsKey('asyncStackTrace')
        ? new StackTrace(map['asyncStackTrace'])
        : null;
    asyncStackTraceId = map.containsKey('asyncStackTraceId')
        ? new StackTraceId(map['asyncStackTraceId'])
        : null;
  }

  List<CallFrame> callFrames;

  StackTrace asyncStackTrace;

  StackTraceId asyncStackTraceId;
}

class DebuggerSearchInContentResponse {
  DebuggerSearchInContentResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new SearchMatch(m)).toList()
        : null;
  }

  List<SearchMatch> result;
}

class DebuggerSetBreakpointResponse {
  DebuggerSetBreakpointResponse(Map map) {
    breakpointId = map['breakpointId'];
    actualLocation = map.containsKey('actualLocation')
        ? new Location(map['actualLocation'])
        : null;
  }

  String breakpointId;

  Location actualLocation;
}

class DebuggerSetBreakpointByUrlResponse {
  DebuggerSetBreakpointByUrlResponse(Map map) {
    breakpointId = map['breakpointId'];
    locations = map['locations'] is Iterable
        ? map['locations'].map((m) => new Location(m)).toList()
        : null;
  }

  String breakpointId;

  List<Location> locations;
}

class DebuggerSetScriptSourceResponse {
  DebuggerSetScriptSourceResponse(Map map) {
    callFrames = map['callFrames'] is Iterable
        ? map['callFrames'].map((m) => new CallFrame(m)).toList()
        : null;
    stackChanged = map['stackChanged'];
    asyncStackTrace = map.containsKey('asyncStackTrace')
        ? new StackTrace(map['asyncStackTrace'])
        : null;
    asyncStackTraceId = map.containsKey('asyncStackTraceId')
        ? new StackTraceId(map['asyncStackTraceId'])
        : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  List<CallFrame> callFrames;

  bool stackChanged;

  StackTrace asyncStackTrace;

  StackTraceId asyncStackTraceId;

  ExceptionDetails exceptionDetails;
}

/// Fired on `Debugger.breakpointResolved`.
class DebuggerBreakpointResolvedEvent {
  DebuggerBreakpointResolvedEvent(Map map) {
    breakpointId = map['breakpointId'];
    location =
        map.containsKey('location') ? new Location(map['location']) : null;
  }

/** Breakpoint unique identifier. */
  String breakpointId;

/** Actual breakpoint location. */
  Location location;
}

/// Fired on `Debugger.paused`.
class DebuggerPausedEvent {
  DebuggerPausedEvent(Map map) {
    callFrames = map['callFrames'] is Iterable
        ? map['callFrames'].map((m) => new CallFrame(m)).toList()
        : null;
    reason = map['reason'];
    data = map['data'];
    hitBreakpoints = map['hitBreakpoints'];
    asyncStackTrace = map.containsKey('asyncStackTrace')
        ? new StackTrace(map['asyncStackTrace'])
        : null;
    asyncStackTraceId = map.containsKey('asyncStackTraceId')
        ? new StackTraceId(map['asyncStackTraceId'])
        : null;
    asyncCallStackTraceId = map.containsKey('asyncCallStackTraceId')
        ? new StackTraceId(map['asyncCallStackTraceId'])
        : null;
  }

/** Call stack the virtual machine stopped on. */
  List<CallFrame> callFrames;

/** Pause reason. */
  String reason;

/** Object containing break-specific auxiliary properties. */
  Map<String, dynamic> data;

/** Hit breakpoints IDs */
  List hitBreakpoints;

/** Async stack trace, if any. */
  StackTrace asyncStackTrace;

/** Async stack trace, if any. */
  StackTraceId asyncStackTraceId;

/** Just scheduled async call will have this stack trace as parent stack during async execution.
This field is available only after `Debugger.stepInto` call with `breakOnAsynCall` flag. */
  StackTraceId asyncCallStackTraceId;
}

/// Fired on `Debugger.resumed`.
class DebuggerResumedEvent {
  DebuggerResumedEvent(Map map) {}
}

/// Fired on `Debugger.scriptFailedToParse`.
class DebuggerScriptFailedToParseEvent {
  DebuggerScriptFailedToParseEvent(Map map) {
    scriptId = map['scriptId'];
    url = map['url'];
    startLine = map['startLine'];
    startColumn = map['startColumn'];
    endLine = map['endLine'];
    endColumn = map['endColumn'];
    executionContextId = map['executionContextId'];
    hash = map['hash'];
    executionContextAuxData = map['executionContextAuxData'];
    sourceMapURL = map['sourceMapURL'];
    hasSourceURL = map['hasSourceURL'];
    isModule = map['isModule'];
    length = map['length'];
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
  }

/** Identifier of the script parsed. */
  String scriptId;

/** URL or name of the script parsed (if any). */
  String url;

/** Line offset of the script within the resource with given URL (for script tags). */
  int startLine;

/** Column offset of the script within the resource with given URL. */
  int startColumn;

/** Last line of the script. */
  int endLine;

/** Length of the last line of the script. */
  int endColumn;

/** Specifies script creation context. */
  int executionContextId;

/** Content hash of the script. */
  String hash;

/** Embedder-specific auxiliary data. */
  Map<String, dynamic> executionContextAuxData;

/** URL of source map associated with script (if any). */
  String sourceMapURL;

/** True, if this script has sourceURL. */
  bool hasSourceURL;

/** True, if this script is ES6 module. */
  bool isModule;

/** This script length. */
  int length;

/** JavaScript top stack frame of where the script parsed event was triggered if available. */
  StackTrace stackTrace;
}

/// Fired on `Debugger.scriptParsed`.
class DebuggerScriptParsedEvent {
  DebuggerScriptParsedEvent(Map map) {
    scriptId = map['scriptId'];
    url = map['url'];
    startLine = map['startLine'];
    startColumn = map['startColumn'];
    endLine = map['endLine'];
    endColumn = map['endColumn'];
    executionContextId = map['executionContextId'];
    hash = map['hash'];
    executionContextAuxData = map['executionContextAuxData'];
    isLiveEdit = map['isLiveEdit'];
    sourceMapURL = map['sourceMapURL'];
    hasSourceURL = map['hasSourceURL'];
    isModule = map['isModule'];
    length = map['length'];
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
  }

/** Identifier of the script parsed. */
  String scriptId;

/** URL or name of the script parsed (if any). */
  String url;

/** Line offset of the script within the resource with given URL (for script tags). */
  int startLine;

/** Column offset of the script within the resource with given URL. */
  int startColumn;

/** Last line of the script. */
  int endLine;

/** Length of the last line of the script. */
  int endColumn;

/** Specifies script creation context. */
  int executionContextId;

/** Content hash of the script. */
  String hash;

/** Embedder-specific auxiliary data. */
  Map<String, dynamic> executionContextAuxData;

/** True, if this script is generated as a result of the live edit operation. */
  bool isLiveEdit;

/** URL of source map associated with script (if any). */
  String sourceMapURL;

/** True, if this script has sourceURL. */
  bool hasSourceURL;

/** True, if this script is ES6 module. */
  bool isModule;

/** This script length. */
  int length;

/** JavaScript top stack frame of where the script parsed event was triggered if available. */
  StackTrace stackTrace;
}

class DevToolsDebugger {
  DevToolsDebugger(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<DebuggerBreakpointResolvedEvent>
      _onBreakpointResolved = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DebuggerPausedEvent> _onPaused =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DebuggerResumedEvent> _onResumed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DebuggerScriptFailedToParseEvent>
      _onScriptFailedToParse = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DebuggerScriptParsedEvent> _onScriptParsed =
      new dart_async.StreamController.broadcast();

/** Continues execution until specific location is reached. */
/** location:[Location] Location to continue to. */
/** targetCallFrames:[String]  */
  dart_async.Future continueToLocation(
      {Location location, String targetCallFrames}) {
    var params = {};
    if (location != null) params['location'] = location;

    if (targetCallFrames != null) params['targetCallFrames'] = targetCallFrames;

    return _devtools.rpc.sendRequest('Debugger.continueToLocation', params);
  }

/** Disables debugger for given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.disable', params);
  }

/** Enables debugger for the given page. Clients should not assume that the debugging has been
enabled until the result for this command is received. */
  dart_async.Future<DebuggerEnableResponse> enable() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Debugger.enable', params)
        .then((response) => new DebuggerEnableResponse(response));
  }

/** Evaluates expression on a given call frame. */
/** callFrameId:[String] Call frame identifier to evaluate on. */
/** expression:[String] Expression to evaluate. */
/** objectGroup:[String] String object group name to put result into (allows rapid releasing resulting object handles
using `releaseObjectGroup`). */
/** includeCommandLineAPI:[bool] Specifies whether command line API should be available to the evaluated expression, defaults
to false. */
/** silent:[bool] In silent mode exceptions thrown during evaluation are not reported and do not pause
execution. Overrides `setPauseOnException` state. */
/** returnByValue:[bool] Whether the result is expected to be a JSON object that should be sent by value. */
/** generatePreview:[bool] Whether preview should be generated for the result. */
/** throwOnSideEffect:[bool] Whether to throw an exception if side effect cannot be ruled out during evaluation. */
  dart_async.Future<DebuggerEvaluateOnCallFrameResponse> evaluateOnCallFrame(
      {String callFrameId,
      String expression,
      String objectGroup,
      bool includeCommandLineAPI,
      bool silent,
      bool returnByValue,
      bool generatePreview,
      bool throwOnSideEffect}) {
    var params = {};
    if (callFrameId != null) params['callFrameId'] = callFrameId;

    if (expression != null) params['expression'] = expression;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (silent != null) params['silent'] = silent;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (throwOnSideEffect != null)
      params['throwOnSideEffect'] = throwOnSideEffect;

    return _devtools.rpc
        .sendRequest('Debugger.evaluateOnCallFrame', params)
        .then((response) => new DebuggerEvaluateOnCallFrameResponse(response));
  }

/** Returns possible locations for breakpoint. scriptId in start and end range locations should be
the same. */
/** start:[Location] Start of range to search possible breakpoint locations in. */
/** end:[Location] End of range to search possible breakpoint locations in (excluding). When not specified, end
of scripts is used as end of range. */
/** restrictToFunction:[bool] Only consider locations which are in the same (non-nested) function as start. */
  dart_async.Future<DebuggerGetPossibleBreakpointsResponse>
      getPossibleBreakpoints(
          {Location start, Location end, bool restrictToFunction}) {
    var params = {};
    if (start != null) params['start'] = start;

    if (end != null) params['end'] = end;

    if (restrictToFunction != null)
      params['restrictToFunction'] = restrictToFunction;

    return _devtools.rpc
        .sendRequest('Debugger.getPossibleBreakpoints', params)
        .then(
            (response) => new DebuggerGetPossibleBreakpointsResponse(response));
  }

/** Returns source for the script with given id. */
/** scriptId:[String] Id of the script to get source for. */
  dart_async.Future<DebuggerGetScriptSourceResponse> getScriptSource(
      {String scriptId}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    return _devtools.rpc
        .sendRequest('Debugger.getScriptSource', params)
        .then((response) => new DebuggerGetScriptSourceResponse(response));
  }

/** Returns stack trace with given `stackTraceId`. */
/** stackTraceId:[StackTraceId]  */
  dart_async.Future<DebuggerGetStackTraceResponse> getStackTrace(
      {StackTraceId stackTraceId}) {
    var params = {};
    if (stackTraceId != null) params['stackTraceId'] = stackTraceId;

    return _devtools.rpc
        .sendRequest('Debugger.getStackTrace', params)
        .then((response) => new DebuggerGetStackTraceResponse(response));
  }

/** Stops on the next JavaScript statement. */
  dart_async.Future pause() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.pause', params);
  }

/**  */
/** parentStackTraceId:[StackTraceId] Debugger will pause when async call with given stack trace is started. */
  dart_async.Future pauseOnAsyncCall({StackTraceId parentStackTraceId}) {
    var params = {};
    if (parentStackTraceId != null)
      params['parentStackTraceId'] = parentStackTraceId;

    return _devtools.rpc.sendRequest('Debugger.pauseOnAsyncCall', params);
  }

/** Removes JavaScript breakpoint. */
/** breakpointId:[String]  */
  dart_async.Future removeBreakpoint({String breakpointId}) {
    var params = {};
    if (breakpointId != null) params['breakpointId'] = breakpointId;

    return _devtools.rpc.sendRequest('Debugger.removeBreakpoint', params);
  }

/** Restarts particular call frame from the beginning. */
/** callFrameId:[String] Call frame identifier to evaluate on. */
  dart_async.Future<DebuggerRestartFrameResponse> restartFrame(
      {String callFrameId}) {
    var params = {};
    if (callFrameId != null) params['callFrameId'] = callFrameId;

    return _devtools.rpc
        .sendRequest('Debugger.restartFrame', params)
        .then((response) => new DebuggerRestartFrameResponse(response));
  }

/** Resumes JavaScript execution. */
  dart_async.Future resume() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.resume', params);
  }

/** This method is deprecated - use Debugger.stepInto with breakOnAsyncCall and
Debugger.pauseOnAsyncTask instead. Steps into next scheduled async task if any is scheduled
before next pause. Returns success when async task is actually scheduled, returns error if no
task were scheduled or another scheduleStepIntoAsync was called. */
  dart_async.Future scheduleStepIntoAsync() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.scheduleStepIntoAsync', params);
  }

/** Searches for given string in script content. */
/** scriptId:[String] Id of the script to search in. */
/** query:[String] String to search for. */
/** caseSensitive:[bool] If true, search is case sensitive. */
/** isRegex:[bool] If true, treats string parameter as regex. */
  dart_async.Future<DebuggerSearchInContentResponse> searchInContent(
      {String scriptId, String query, bool caseSensitive, bool isRegex}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Debugger.searchInContent', params)
        .then((response) => new DebuggerSearchInContentResponse(response));
  }

/** Enables or disables async call stacks tracking. */
/** maxDepth:[int] Maximum depth of async call stacks. Setting to `0` will effectively disable collecting async
call stacks (default). */
  dart_async.Future setAsyncCallStackDepth({int maxDepth}) {
    var params = {};
    if (maxDepth != null) params['maxDepth'] = maxDepth;

    return _devtools.rpc.sendRequest('Debugger.setAsyncCallStackDepth', params);
  }

/** Replace previous blackbox patterns with passed ones. Forces backend to skip stepping/pausing in
scripts with url matching one of the patterns. VM will try to leave blackboxed script by
performing 'step in' several times, finally resorting to 'step out' if unsuccessful. */
/** patterns:[List] Array of regexps that will be used to check script url for blackbox state. */
  dart_async.Future setBlackboxPatterns({List patterns}) {
    var params = {};
    if (patterns != null) params['patterns'] = patterns;

    return _devtools.rpc.sendRequest('Debugger.setBlackboxPatterns', params);
  }

/** Makes backend skip steps in the script in blackboxed ranges. VM will try leave blacklisted
scripts by performing 'step in' several times, finally resorting to 'step out' if unsuccessful.
Positions array contains positions where blackbox state is changed. First interval isn't
blackboxed. Array should be sorted. */
/** scriptId:[String] Id of the script. */
/** positions:[List]  */
  dart_async.Future setBlackboxedRanges(
      {String scriptId, List<ScriptPosition> positions}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (positions != null) params['positions'] = positions;

    return _devtools.rpc.sendRequest('Debugger.setBlackboxedRanges', params);
  }

/** Sets JavaScript breakpoint at a given location. */
/** location:[Location] Location to set breakpoint in. */
/** condition:[String] Expression to use as a breakpoint condition. When specified, debugger will only stop on the
breakpoint if this expression evaluates to true. */
  dart_async.Future<DebuggerSetBreakpointResponse> setBreakpoint(
      {Location location, String condition}) {
    var params = {};
    if (location != null) params['location'] = location;

    if (condition != null) params['condition'] = condition;

    return _devtools.rpc
        .sendRequest('Debugger.setBreakpoint', params)
        .then((response) => new DebuggerSetBreakpointResponse(response));
  }

/** Sets JavaScript breakpoint at given location specified either by URL or URL regex. Once this
command is issued, all existing parsed scripts will have breakpoints resolved and returned in
`locations` property. Further matching script parsing will result in subsequent
`breakpointResolved` events issued. This logical breakpoint will survive page reloads. */
/** lineNumber:[int] Line number to set breakpoint at. */
/** url:[String] URL of the resources to set breakpoint on. */
/** urlRegex:[String] Regex pattern for the URLs of the resources to set breakpoints on. Either `url` or
`urlRegex` must be specified. */
/** scriptHash:[String] Script hash of the resources to set breakpoint on. */
/** columnNumber:[int] Offset in the line to set breakpoint at. */
/** condition:[String] Expression to use as a breakpoint condition. When specified, debugger will only stop on the
breakpoint if this expression evaluates to true. */
  dart_async.Future<DebuggerSetBreakpointByUrlResponse> setBreakpointByUrl(
      {int lineNumber,
      String url,
      String urlRegex,
      String scriptHash,
      int columnNumber,
      String condition}) {
    var params = {};
    if (lineNumber != null) params['lineNumber'] = lineNumber;

    if (url != null) params['url'] = url;

    if (urlRegex != null) params['urlRegex'] = urlRegex;

    if (scriptHash != null) params['scriptHash'] = scriptHash;

    if (columnNumber != null) params['columnNumber'] = columnNumber;

    if (condition != null) params['condition'] = condition;

    return _devtools.rpc
        .sendRequest('Debugger.setBreakpointByUrl', params)
        .then((response) => new DebuggerSetBreakpointByUrlResponse(response));
  }

/** Activates / deactivates all breakpoints on the page. */
/** active:[bool] New value for breakpoints active state. */
  dart_async.Future setBreakpointsActive({bool active}) {
    var params = {};
    if (active != null) params['active'] = active;

    return _devtools.rpc.sendRequest('Debugger.setBreakpointsActive', params);
  }

/** Defines pause on exceptions state. Can be set to stop on all exceptions, uncaught exceptions or
no exceptions. Initial pause on exceptions state is `none`. */
/** state:[String] Pause on exceptions mode. */
  dart_async.Future setPauseOnExceptions({String state}) {
    var params = {};
    if (state != null) params['state'] = state;

    return _devtools.rpc.sendRequest('Debugger.setPauseOnExceptions', params);
  }

/** Changes return value in top frame. Available only at return break position. */
/** newValue:[CallArgument] New return value. */
  dart_async.Future setReturnValue({CallArgument newValue}) {
    var params = {};
    if (newValue != null) params['newValue'] = newValue;

    return _devtools.rpc.sendRequest('Debugger.setReturnValue', params);
  }

/** Edits JavaScript source live. */
/** scriptId:[String] Id of the script to edit. */
/** scriptSource:[String] New content of the script. */
/** dryRun:[bool] If true the change will not actually be applied. Dry run may be used to get result
description without actually modifying the code. */
  dart_async.Future<DebuggerSetScriptSourceResponse> setScriptSource(
      {String scriptId, String scriptSource, bool dryRun}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (scriptSource != null) params['scriptSource'] = scriptSource;

    if (dryRun != null) params['dryRun'] = dryRun;

    return _devtools.rpc
        .sendRequest('Debugger.setScriptSource', params)
        .then((response) => new DebuggerSetScriptSourceResponse(response));
  }

/** Makes page not interrupt on any pauses (breakpoint, exception, dom exception etc). */
/** skip:[bool] New value for skip pauses state. */
  dart_async.Future setSkipAllPauses({bool skip}) {
    var params = {};
    if (skip != null) params['skip'] = skip;

    return _devtools.rpc.sendRequest('Debugger.setSkipAllPauses', params);
  }

/** Changes value of variable in a callframe. Object-based scopes are not supported and must be
mutated manually. */
/** scopeNumber:[int] 0-based number of scope as was listed in scope chain. Only 'local', 'closure' and 'catch'
scope types are allowed. Other scopes could be manipulated manually. */
/** variableName:[String] Variable name. */
/** newValue:[CallArgument] New variable value. */
/** callFrameId:[String] Id of callframe that holds variable. */
  dart_async.Future setVariableValue(
      {int scopeNumber,
      String variableName,
      CallArgument newValue,
      String callFrameId}) {
    var params = {};
    if (scopeNumber != null) params['scopeNumber'] = scopeNumber;

    if (variableName != null) params['variableName'] = variableName;

    if (newValue != null) params['newValue'] = newValue;

    if (callFrameId != null) params['callFrameId'] = callFrameId;

    return _devtools.rpc.sendRequest('Debugger.setVariableValue', params);
  }

/** Steps into the function call. */
/** breakOnAsyncCall:[bool] Debugger will issue additional Debugger.paused notification if any async task is scheduled
before next pause. */
  dart_async.Future stepInto({bool breakOnAsyncCall}) {
    var params = {};
    if (breakOnAsyncCall != null) params['breakOnAsyncCall'] = breakOnAsyncCall;

    return _devtools.rpc.sendRequest('Debugger.stepInto', params);
  }

/** Steps out of the function call. */
  dart_async.Future stepOut() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.stepOut', params);
  }

/** Steps over the statement. */
  dart_async.Future stepOver() {
    var params = {};
    return _devtools.rpc.sendRequest('Debugger.stepOver', params);
  }

/** Broadcast stream: Fired when breakpoint is resolved to an actual script and location. */
  dart_async.Stream<DebuggerBreakpointResolvedEvent> get onBreakpointResolved =>
      _onBreakpointResolved.stream;
/** Broadcast stream: Fired when the virtual machine stopped on breakpoint or exception or any other stop criteria. */
  dart_async.Stream<DebuggerPausedEvent> get onPaused => _onPaused.stream;
/** Broadcast stream: Fired when the virtual machine resumed execution. */
  dart_async.Stream<DebuggerResumedEvent> get onResumed => _onResumed.stream;
/** Broadcast stream: Fired when virtual machine fails to parse the script. */
  dart_async.Stream<DebuggerScriptFailedToParseEvent>
      get onScriptFailedToParse => _onScriptFailedToParse.stream;
/** Broadcast stream: Fired when virtual machine parses script. This event is also fired for all known and uncollected
scripts upon enabling debugger. */
  dart_async.Stream<DebuggerScriptParsedEvent> get onScriptParsed =>
      _onScriptParsed.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Debugger.breakpointResolved',
        (json_rpc_2.Parameters params) {
      _onBreakpointResolved
          .add(new DebuggerBreakpointResolvedEvent(params.asMap));
    });

    rpc.registerMethod('Debugger.paused', (json_rpc_2.Parameters params) {
      _onPaused.add(new DebuggerPausedEvent(params.asMap));
    });

    rpc.registerMethod('Debugger.resumed', (json_rpc_2.Parameters params) {
      _onResumed.add(new DebuggerResumedEvent(params.asMap));
    });

    rpc.registerMethod('Debugger.scriptFailedToParse',
        (json_rpc_2.Parameters params) {
      _onScriptFailedToParse
          .add(new DebuggerScriptFailedToParseEvent(params.asMap));
    });

    rpc.registerMethod('Debugger.scriptParsed', (json_rpc_2.Parameters params) {
      _onScriptParsed.add(new DebuggerScriptParsedEvent(params.asMap));
    });
  }

  void _close() {
    _onBreakpointResolved.close();
    _onPaused.close();
    _onResumed.close();
    _onScriptFailedToParse.close();
    _onScriptParsed.close();
  }
}

class HeapProfilerGetHeapObjectIdResponse {
  HeapProfilerGetHeapObjectIdResponse(Map map) {
    heapSnapshotObjectId = map['heapSnapshotObjectId'];
  }

  String heapSnapshotObjectId;
}

class HeapProfilerGetObjectByHeapObjectIdResponse {
  HeapProfilerGetObjectByHeapObjectIdResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
  }

  RemoteObject result;
}

class HeapProfilerGetSamplingProfileResponse {
  HeapProfilerGetSamplingProfileResponse(Map map) {
    profile = map.containsKey('profile')
        ? new SamplingHeapProfile(map['profile'])
        : null;
  }

  SamplingHeapProfile profile;
}

class HeapProfilerStopSamplingResponse {
  HeapProfilerStopSamplingResponse(Map map) {
    profile = map.containsKey('profile')
        ? new SamplingHeapProfile(map['profile'])
        : null;
  }

  SamplingHeapProfile profile;
}

/// Fired on `HeapProfiler.addHeapSnapshotChunk`.
class HeapProfilerAddHeapSnapshotChunkEvent {
  HeapProfilerAddHeapSnapshotChunkEvent(Map map) {
    chunk = map['chunk'];
  }

/**  */
  String chunk;
}

/// Fired on `HeapProfiler.heapStatsUpdate`.
class HeapProfilerHeapStatsUpdateEvent {
  HeapProfilerHeapStatsUpdateEvent(Map map) {
    statsUpdate = map['statsUpdate'];
  }

/** An array of triplets. Each triplet describes a fragment. The first integer is the fragment
index, the second integer is a total count of objects for the fragment, the third integer is
a total size of the objects for the fragment. */
  List statsUpdate;
}

/// Fired on `HeapProfiler.lastSeenObjectId`.
class HeapProfilerLastSeenObjectIdEvent {
  HeapProfilerLastSeenObjectIdEvent(Map map) {
    lastSeenObjectId = map['lastSeenObjectId'];
    timestamp = map['timestamp'];
  }

/**  */
  int lastSeenObjectId;

/**  */
  num timestamp;
}

/// Fired on `HeapProfiler.reportHeapSnapshotProgress`.
class HeapProfilerReportHeapSnapshotProgressEvent {
  HeapProfilerReportHeapSnapshotProgressEvent(Map map) {
    done = map['done'];
    total = map['total'];
    finished = map['finished'];
  }

/**  */
  int done;

/**  */
  int total;

/**  */
  bool finished;
}

/// Fired on `HeapProfiler.resetProfiles`.
class HeapProfilerResetProfilesEvent {
  HeapProfilerResetProfilesEvent(Map map) {}
}

class DevToolsHeapProfiler {
  DevToolsHeapProfiler(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<HeapProfilerAddHeapSnapshotChunkEvent>
      _onAddHeapSnapshotChunk = new dart_async.StreamController.broadcast();

  dart_async.StreamController<HeapProfilerHeapStatsUpdateEvent>
      _onHeapStatsUpdate = new dart_async.StreamController.broadcast();

  dart_async.StreamController<HeapProfilerLastSeenObjectIdEvent>
      _onLastSeenObjectId = new dart_async.StreamController.broadcast();

  dart_async.StreamController<HeapProfilerReportHeapSnapshotProgressEvent>
      _onReportHeapSnapshotProgress =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<HeapProfilerResetProfilesEvent> _onResetProfiles =
      new dart_async.StreamController.broadcast();

/** Enables console to refer to the node with given id via $x (see Command Line API for more details
$x functions). */
/** heapObjectId:[String] Heap snapshot object id to be accessible by means of $x command line API. */
  dart_async.Future addInspectedHeapObject({String heapObjectId}) {
    var params = {};
    if (heapObjectId != null) params['heapObjectId'] = heapObjectId;

    return _devtools.rpc
        .sendRequest('HeapProfiler.addInspectedHeapObject', params);
  }

/**  */
  dart_async.Future collectGarbage() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.collectGarbage', params);
  }

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.disable', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeapProfiler.enable', params);
  }

/**  */
/** objectId:[String] Identifier of the object to get heap object id for. */
  dart_async.Future<HeapProfilerGetHeapObjectIdResponse> getHeapObjectId(
      {String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('HeapProfiler.getHeapObjectId', params)
        .then((response) => new HeapProfilerGetHeapObjectIdResponse(response));
  }

/**  */
/** objectId:[String]  */
/** objectGroup:[String] Symbolic group name that can be used to release multiple objects. */
  dart_async.Future<HeapProfilerGetObjectByHeapObjectIdResponse>
      getObjectByHeapObjectId({String objectId, String objectGroup}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('HeapProfiler.getObjectByHeapObjectId', params)
        .then((response) =>
            new HeapProfilerGetObjectByHeapObjectIdResponse(response));
  }

/**  */
  dart_async.Future<HeapProfilerGetSamplingProfileResponse>
      getSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('HeapProfiler.getSamplingProfile', params)
        .then(
            (response) => new HeapProfilerGetSamplingProfileResponse(response));
  }

/**  */
/** samplingInterval:[num] Average sample interval in bytes. Poisson distribution is used for the intervals. The
default value is 32768 bytes. */
  dart_async.Future startSampling({num samplingInterval}) {
    var params = {};
    if (samplingInterval != null) params['samplingInterval'] = samplingInterval;

    return _devtools.rpc.sendRequest('HeapProfiler.startSampling', params);
  }

/**  */
/** trackAllocations:[bool]  */
  dart_async.Future startTrackingHeapObjects({bool trackAllocations}) {
    var params = {};
    if (trackAllocations != null) params['trackAllocations'] = trackAllocations;

    return _devtools.rpc
        .sendRequest('HeapProfiler.startTrackingHeapObjects', params);
  }

/**  */
  dart_async.Future<HeapProfilerStopSamplingResponse> stopSampling() {
    var params = {};
    return _devtools.rpc
        .sendRequest('HeapProfiler.stopSampling', params)
        .then((response) => new HeapProfilerStopSamplingResponse(response));
  }

/**  */
/** reportProgress:[bool] If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken
when the tracking is stopped. */
  dart_async.Future stopTrackingHeapObjects({bool reportProgress}) {
    var params = {};
    if (reportProgress != null) params['reportProgress'] = reportProgress;

    return _devtools.rpc
        .sendRequest('HeapProfiler.stopTrackingHeapObjects', params);
  }

/**  */
/** reportProgress:[bool] If true 'reportHeapSnapshotProgress' events will be generated while snapshot is being taken. */
  dart_async.Future takeHeapSnapshot({bool reportProgress}) {
    var params = {};
    if (reportProgress != null) params['reportProgress'] = reportProgress;

    return _devtools.rpc.sendRequest('HeapProfiler.takeHeapSnapshot', params);
  }

/** Broadcast stream:  */
  dart_async.Stream<HeapProfilerAddHeapSnapshotChunkEvent>
      get onAddHeapSnapshotChunk => _onAddHeapSnapshotChunk.stream;
/** Broadcast stream: If heap objects tracking has been started then backend may send update for one or more fragments */
  dart_async.Stream<HeapProfilerHeapStatsUpdateEvent> get onHeapStatsUpdate =>
      _onHeapStatsUpdate.stream;
/** Broadcast stream: If heap objects tracking has been started then backend regularly sends a current value for last
seen object id and corresponding timestamp. If the were changes in the heap since last event
then one or more heapStatsUpdate events will be sent before a new lastSeenObjectId event. */
  dart_async.Stream<HeapProfilerLastSeenObjectIdEvent> get onLastSeenObjectId =>
      _onLastSeenObjectId.stream;
/** Broadcast stream:  */
  dart_async.Stream<HeapProfilerReportHeapSnapshotProgressEvent>
      get onReportHeapSnapshotProgress => _onReportHeapSnapshotProgress.stream;
/** Broadcast stream:  */
  dart_async.Stream<HeapProfilerResetProfilesEvent> get onResetProfiles =>
      _onResetProfiles.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('HeapProfiler.addHeapSnapshotChunk',
        (json_rpc_2.Parameters params) {
      _onAddHeapSnapshotChunk
          .add(new HeapProfilerAddHeapSnapshotChunkEvent(params.asMap));
    });

    rpc.registerMethod('HeapProfiler.heapStatsUpdate',
        (json_rpc_2.Parameters params) {
      _onHeapStatsUpdate
          .add(new HeapProfilerHeapStatsUpdateEvent(params.asMap));
    });

    rpc.registerMethod('HeapProfiler.lastSeenObjectId',
        (json_rpc_2.Parameters params) {
      _onLastSeenObjectId
          .add(new HeapProfilerLastSeenObjectIdEvent(params.asMap));
    });

    rpc.registerMethod('HeapProfiler.reportHeapSnapshotProgress',
        (json_rpc_2.Parameters params) {
      _onReportHeapSnapshotProgress
          .add(new HeapProfilerReportHeapSnapshotProgressEvent(params.asMap));
    });

    rpc.registerMethod('HeapProfiler.resetProfiles',
        (json_rpc_2.Parameters params) {
      _onResetProfiles.add(new HeapProfilerResetProfilesEvent(params.asMap));
    });
  }

  void _close() {
    _onAddHeapSnapshotChunk.close();
    _onHeapStatsUpdate.close();
    _onLastSeenObjectId.close();
    _onReportHeapSnapshotProgress.close();
    _onResetProfiles.close();
  }
}

class ProfilerGetBestEffortCoverageResponse {
  ProfilerGetBestEffortCoverageResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new ScriptCoverage(m)).toList()
        : null;
  }

  List<ScriptCoverage> result;
}

class ProfilerStopResponse {
  ProfilerStopResponse(Map map) {
    profile = map.containsKey('profile') ? new Profile(map['profile']) : null;
  }

  Profile profile;
}

class ProfilerTakePreciseCoverageResponse {
  ProfilerTakePreciseCoverageResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new ScriptCoverage(m)).toList()
        : null;
  }

  List<ScriptCoverage> result;
}

class ProfilerTakeTypeProfileResponse {
  ProfilerTakeTypeProfileResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new ScriptTypeProfile(m)).toList()
        : null;
  }

  List<ScriptTypeProfile> result;
}

/// Fired on `Profiler.consoleProfileFinished`.
class ProfilerConsoleProfileFinishedEvent {
  ProfilerConsoleProfileFinishedEvent(Map map) {
    id = map['id'];
    location =
        map.containsKey('location') ? new Location(map['location']) : null;
    profile = map.containsKey('profile') ? new Profile(map['profile']) : null;
    title = map['title'];
  }

/**  */
  String id;

/** Location of console.profileEnd(). */
  Location location;

/**  */
  Profile profile;

/** Profile title passed as an argument to console.profile(). */
  String title;
}

/// Fired on `Profiler.consoleProfileStarted`.
class ProfilerConsoleProfileStartedEvent {
  ProfilerConsoleProfileStartedEvent(Map map) {
    id = map['id'];
    location =
        map.containsKey('location') ? new Location(map['location']) : null;
    title = map['title'];
  }

/**  */
  String id;

/** Location of console.profile(). */
  Location location;

/** Profile title passed as an argument to console.profile(). */
  String title;
}

class DevToolsProfiler {
  DevToolsProfiler(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<ProfilerConsoleProfileFinishedEvent>
      _onConsoleProfileFinished = new dart_async.StreamController.broadcast();

  dart_async.StreamController<ProfilerConsoleProfileStartedEvent>
      _onConsoleProfileStarted = new dart_async.StreamController.broadcast();

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.disable', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.enable', params);
  }

/** Collect coverage data for the current isolate. The coverage data may be incomplete due to
garbage collection. */
  dart_async.Future<ProfilerGetBestEffortCoverageResponse>
      getBestEffortCoverage() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.getBestEffortCoverage', params)
        .then(
            (response) => new ProfilerGetBestEffortCoverageResponse(response));
  }

/** Changes CPU profiler sampling interval. Must be called before CPU profiles recording started. */
/** interval:[int] New sampling interval in microseconds. */
  dart_async.Future setSamplingInterval({int interval}) {
    var params = {};
    if (interval != null) params['interval'] = interval;

    return _devtools.rpc.sendRequest('Profiler.setSamplingInterval', params);
  }

/**  */
  dart_async.Future start() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.start', params);
  }

/** Enable precise code coverage. Coverage data for JavaScript executed before enabling precise code
coverage may be incomplete. Enabling prevents running optimized code and resets execution
counters. */
/** callCount:[bool] Collect accurate call counts beyond simple 'covered' or 'not covered'. */
/** detailed:[bool] Collect block-based coverage. */
  dart_async.Future startPreciseCoverage({bool callCount, bool detailed}) {
    var params = {};
    if (callCount != null) params['callCount'] = callCount;

    if (detailed != null) params['detailed'] = detailed;

    return _devtools.rpc.sendRequest('Profiler.startPreciseCoverage', params);
  }

/** Enable type profile. */
  dart_async.Future startTypeProfile() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.startTypeProfile', params);
  }

/**  */
  dart_async.Future<ProfilerStopResponse> stop() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.stop', params)
        .then((response) => new ProfilerStopResponse(response));
  }

/** Disable precise code coverage. Disabling releases unnecessary execution count records and allows
executing optimized code. */
  dart_async.Future stopPreciseCoverage() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.stopPreciseCoverage', params);
  }

/** Disable type profile. Disabling releases type profile data collected so far. */
  dart_async.Future stopTypeProfile() {
    var params = {};
    return _devtools.rpc.sendRequest('Profiler.stopTypeProfile', params);
  }

/** Collect coverage data for the current isolate, and resets execution counters. Precise code
coverage needs to have started. */
  dart_async.Future<ProfilerTakePreciseCoverageResponse> takePreciseCoverage() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.takePreciseCoverage', params)
        .then((response) => new ProfilerTakePreciseCoverageResponse(response));
  }

/** Collect type profile. */
  dart_async.Future<ProfilerTakeTypeProfileResponse> takeTypeProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Profiler.takeTypeProfile', params)
        .then((response) => new ProfilerTakeTypeProfileResponse(response));
  }

/** Broadcast stream:  */
  dart_async.Stream<ProfilerConsoleProfileFinishedEvent>
      get onConsoleProfileFinished => _onConsoleProfileFinished.stream;
/** Broadcast stream: Sent when new profile recording is started using console.profile() call. */
  dart_async.Stream<ProfilerConsoleProfileStartedEvent>
      get onConsoleProfileStarted => _onConsoleProfileStarted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Profiler.consoleProfileFinished',
        (json_rpc_2.Parameters params) {
      _onConsoleProfileFinished
          .add(new ProfilerConsoleProfileFinishedEvent(params.asMap));
    });

    rpc.registerMethod('Profiler.consoleProfileStarted',
        (json_rpc_2.Parameters params) {
      _onConsoleProfileStarted
          .add(new ProfilerConsoleProfileStartedEvent(params.asMap));
    });
  }

  void _close() {
    _onConsoleProfileFinished.close();
    _onConsoleProfileStarted.close();
  }
}

class RuntimeAwaitPromiseResponse {
  RuntimeAwaitPromiseResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeCallFunctionOnResponse {
  RuntimeCallFunctionOnResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeCompileScriptResponse {
  RuntimeCompileScriptResponse(Map map) {
    scriptId = map['scriptId'];
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  String scriptId;

  ExceptionDetails exceptionDetails;
}

class RuntimeEvaluateResponse {
  RuntimeEvaluateResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

class RuntimeGetPropertiesResponse {
  RuntimeGetPropertiesResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new PropertyDescriptor(m)).toList()
        : null;
    internalProperties = map['internalProperties'] is Iterable
        ? map['internalProperties']
            .map((m) => new InternalPropertyDescriptor(m))
            .toList()
        : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  List<PropertyDescriptor> result;

  List<InternalPropertyDescriptor> internalProperties;

  ExceptionDetails exceptionDetails;
}

class RuntimeGlobalLexicalScopeNamesResponse {
  RuntimeGlobalLexicalScopeNamesResponse(Map map) {
    names = map['names'];
  }

  List names;
}

class RuntimeQueryObjectsResponse {
  RuntimeQueryObjectsResponse(Map map) {
    objects =
        map.containsKey('objects') ? new RemoteObject(map['objects']) : null;
  }

  RemoteObject objects;
}

class RuntimeRunScriptResponse {
  RuntimeRunScriptResponse(Map map) {
    result = map.containsKey('result') ? new RemoteObject(map['result']) : null;
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

  RemoteObject result;

  ExceptionDetails exceptionDetails;
}

/// Fired on `Runtime.consoleAPICalled`.
class RuntimeConsoleAPICalledEvent {
  RuntimeConsoleAPICalledEvent(Map map) {
    type = map['type'];
    args = map['args'] is Iterable
        ? map['args'].map((m) => new RemoteObject(m)).toList()
        : null;
    executionContextId = map['executionContextId'];
    timestamp = map['timestamp'];
    stackTrace = map.containsKey('stackTrace')
        ? new StackTrace(map['stackTrace'])
        : null;
    context = map['context'];
  }

/** Type of the call. */
  String type;

/** Call arguments. */
  List<RemoteObject> args;

/** Identifier of the context where the call was made. */
  int executionContextId;

/** Call timestamp. */
  num timestamp;

/** Stack trace captured when the call was made. */
  StackTrace stackTrace;

/** Console context descriptor for calls on non-default console context (not console.*):
'anonymous#unique-logger-id' for call on unnamed context, 'name#unique-logger-id' for call
on named context. */
  String context;
}

/// Fired on `Runtime.exceptionRevoked`.
class RuntimeExceptionRevokedEvent {
  RuntimeExceptionRevokedEvent(Map map) {
    reason = map['reason'];
    exceptionId = map['exceptionId'];
  }

/** Reason describing why exception was revoked. */
  String reason;

/** The id of revoked exception, as reported in `exceptionThrown`. */
  int exceptionId;
}

/// Fired on `Runtime.exceptionThrown`.
class RuntimeExceptionThrownEvent {
  RuntimeExceptionThrownEvent(Map map) {
    timestamp = map['timestamp'];
    exceptionDetails = map.containsKey('exceptionDetails')
        ? new ExceptionDetails(map['exceptionDetails'])
        : null;
  }

/** Timestamp of the exception. */
  num timestamp;

/**  */
  ExceptionDetails exceptionDetails;
}

/// Fired on `Runtime.executionContextCreated`.
class RuntimeExecutionContextCreatedEvent {
  RuntimeExecutionContextCreatedEvent(Map map) {
    context = map.containsKey('context')
        ? new ExecutionContextDescription(map['context'])
        : null;
  }

/** A newly created execution context. */
  ExecutionContextDescription context;
}

/// Fired on `Runtime.executionContextDestroyed`.
class RuntimeExecutionContextDestroyedEvent {
  RuntimeExecutionContextDestroyedEvent(Map map) {
    executionContextId = map['executionContextId'];
  }

/** Id of the destroyed context */
  int executionContextId;
}

/// Fired on `Runtime.executionContextsCleared`.
class RuntimeExecutionContextsClearedEvent {
  RuntimeExecutionContextsClearedEvent(Map map) {}
}

/// Fired on `Runtime.inspectRequested`.
class RuntimeInspectRequestedEvent {
  RuntimeInspectRequestedEvent(Map map) {
    object = map.containsKey('object') ? new RemoteObject(map['object']) : null;
    hints = map['hints'];
  }

/**  */
  RemoteObject object;

/**  */
  Map<String, dynamic> hints;
}

class DevToolsRuntime {
  DevToolsRuntime(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<RuntimeConsoleAPICalledEvent>
      _onConsoleAPICalled = new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeExceptionRevokedEvent>
      _onExceptionRevoked = new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeExceptionThrownEvent> _onExceptionThrown =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeExecutionContextCreatedEvent>
      _onExecutionContextCreated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeExecutionContextDestroyedEvent>
      _onExecutionContextDestroyed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeExecutionContextsClearedEvent>
      _onExecutionContextsCleared = new dart_async.StreamController.broadcast();

  dart_async.StreamController<RuntimeInspectRequestedEvent>
      _onInspectRequested = new dart_async.StreamController.broadcast();

/** Add handler to promise with given promise object id. */
/** promiseObjectId:[String] Identifier of the promise. */
/** returnByValue:[bool] Whether the result is expected to be a JSON object that should be sent by value. */
/** generatePreview:[bool] Whether preview should be generated for the result. */
  dart_async.Future<RuntimeAwaitPromiseResponse> awaitPromise(
      {String promiseObjectId, bool returnByValue, bool generatePreview}) {
    var params = {};
    if (promiseObjectId != null) params['promiseObjectId'] = promiseObjectId;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    return _devtools.rpc
        .sendRequest('Runtime.awaitPromise', params)
        .then((response) => new RuntimeAwaitPromiseResponse(response));
  }

/** Calls function with given declaration on the given object. Object group of the result is
inherited from the target object. */
/** functionDeclaration:[String] Declaration of the function to call. */
/** objectId:[String] Identifier of the object to call function on. Either objectId or executionContextId should
be specified. */
/** arguments:[List] Call arguments. All call arguments must belong to the same JavaScript world as the target
object. */
/** silent:[bool] In silent mode exceptions thrown during evaluation are not reported and do not pause
execution. Overrides `setPauseOnException` state. */
/** returnByValue:[bool] Whether the result is expected to be a JSON object which should be sent by value. */
/** generatePreview:[bool] Whether preview should be generated for the result. */
/** userGesture:[bool] Whether execution should be treated as initiated by user in the UI. */
/** awaitPromise:[bool] Whether execution should `await` for resulting value and return once awaited promise is
resolved. */
/** executionContextId:[int] Specifies execution context which global object will be used to call function on. Either
executionContextId or objectId should be specified. */
/** objectGroup:[String] Symbolic group name that can be used to release multiple objects. If objectGroup is not
specified and objectId is, objectGroup will be inherited from object. */
  dart_async.Future<RuntimeCallFunctionOnResponse> callFunctionOn(
      {String functionDeclaration,
      String objectId,
      List<CallArgument> arguments,
      bool silent,
      bool returnByValue,
      bool generatePreview,
      bool userGesture,
      bool awaitPromise,
      int executionContextId,
      String objectGroup}) {
    var params = {};
    if (functionDeclaration != null)
      params['functionDeclaration'] = functionDeclaration;

    if (objectId != null) params['objectId'] = objectId;

    if (arguments != null) params['arguments'] = arguments;

    if (silent != null) params['silent'] = silent;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (userGesture != null) params['userGesture'] = userGesture;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('Runtime.callFunctionOn', params)
        .then((response) => new RuntimeCallFunctionOnResponse(response));
  }

/** Compiles expression. */
/** expression:[String] Expression to compile. */
/** sourceURL:[String] Source url to be set for the script. */
/** persistScript:[bool] Specifies whether the compiled script should be persisted. */
/** executionContextId:[int] Specifies in which execution context to perform script run. If the parameter is omitted the
evaluation will be performed in the context of the inspected page. */
  dart_async.Future<RuntimeCompileScriptResponse> compileScript(
      {String expression,
      String sourceURL,
      bool persistScript,
      int executionContextId}) {
    var params = {};
    if (expression != null) params['expression'] = expression;

    if (sourceURL != null) params['sourceURL'] = sourceURL;

    if (persistScript != null) params['persistScript'] = persistScript;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    return _devtools.rpc
        .sendRequest('Runtime.compileScript', params)
        .then((response) => new RuntimeCompileScriptResponse(response));
  }

/** Disables reporting of execution contexts creation. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.disable', params);
  }

/** Discards collected exceptions and console API calls. */
  dart_async.Future discardConsoleEntries() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.discardConsoleEntries', params);
  }

/** Enables reporting of execution contexts creation by means of `executionContextCreated` event.
When the reporting gets enabled the event will be sent immediately for each existing execution
context. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.enable', params);
  }

/** Evaluates expression on global object. */
/** expression:[String] Expression to evaluate. */
/** objectGroup:[String] Symbolic group name that can be used to release multiple objects. */
/** includeCommandLineAPI:[bool] Determines whether Command Line API should be available during the evaluation. */
/** silent:[bool] In silent mode exceptions thrown during evaluation are not reported and do not pause
execution. Overrides `setPauseOnException` state. */
/** contextId:[int] Specifies in which execution context to perform evaluation. If the parameter is omitted the
evaluation will be performed in the context of the inspected page. */
/** returnByValue:[bool] Whether the result is expected to be a JSON object that should be sent by value. */
/** generatePreview:[bool] Whether preview should be generated for the result. */
/** userGesture:[bool] Whether execution should be treated as initiated by user in the UI. */
/** awaitPromise:[bool] Whether execution should `await` for resulting value and return once awaited promise is
resolved. */
  dart_async.Future<RuntimeEvaluateResponse> evaluate(
      {String expression,
      String objectGroup,
      bool includeCommandLineAPI,
      bool silent,
      int contextId,
      bool returnByValue,
      bool generatePreview,
      bool userGesture,
      bool awaitPromise}) {
    var params = {};
    if (expression != null) params['expression'] = expression;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (silent != null) params['silent'] = silent;

    if (contextId != null) params['contextId'] = contextId;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (userGesture != null) params['userGesture'] = userGesture;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    return _devtools.rpc
        .sendRequest('Runtime.evaluate', params)
        .then((response) => new RuntimeEvaluateResponse(response));
  }

/** Returns properties of a given object. Object group of the result is inherited from the target
object. */
/** objectId:[String] Identifier of the object to return properties for. */
/** ownProperties:[bool] If true, returns properties belonging only to the element itself, not to its prototype
chain. */
/** accessorPropertiesOnly:[bool] If true, returns accessor properties (with getter/setter) only; internal properties are not
returned either. */
/** generatePreview:[bool] Whether preview should be generated for the results. */
  dart_async.Future<RuntimeGetPropertiesResponse> getProperties(
      {String objectId,
      bool ownProperties,
      bool accessorPropertiesOnly,
      bool generatePreview}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (ownProperties != null) params['ownProperties'] = ownProperties;

    if (accessorPropertiesOnly != null)
      params['accessorPropertiesOnly'] = accessorPropertiesOnly;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    return _devtools.rpc
        .sendRequest('Runtime.getProperties', params)
        .then((response) => new RuntimeGetPropertiesResponse(response));
  }

/** Returns all let, const and class variables from global scope. */
/** executionContextId:[int] Specifies in which execution context to lookup global scope variables. */
  dart_async.Future<RuntimeGlobalLexicalScopeNamesResponse>
      globalLexicalScopeNames({int executionContextId}) {
    var params = {};
    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    return _devtools.rpc
        .sendRequest('Runtime.globalLexicalScopeNames', params)
        .then(
            (response) => new RuntimeGlobalLexicalScopeNamesResponse(response));
  }

/**  */
/** prototypeObjectId:[String] Identifier of the prototype to return objects for. */
  dart_async.Future<RuntimeQueryObjectsResponse> queryObjects(
      {String prototypeObjectId}) {
    var params = {};
    if (prototypeObjectId != null)
      params['prototypeObjectId'] = prototypeObjectId;

    return _devtools.rpc
        .sendRequest('Runtime.queryObjects', params)
        .then((response) => new RuntimeQueryObjectsResponse(response));
  }

/** Releases remote object with given id. */
/** objectId:[String] Identifier of the object to release. */
  dart_async.Future releaseObject({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('Runtime.releaseObject', params);
  }

/** Releases all remote objects that belong to a given group. */
/** objectGroup:[String] Symbolic object group name. */
  dart_async.Future releaseObjectGroup({String objectGroup}) {
    var params = {};
    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc.sendRequest('Runtime.releaseObjectGroup', params);
  }

/** Tells inspected instance to run if it was waiting for debugger to attach. */
  dart_async.Future runIfWaitingForDebugger() {
    var params = {};
    return _devtools.rpc.sendRequest('Runtime.runIfWaitingForDebugger', params);
  }

/** Runs script with given id in a given context. */
/** scriptId:[String] Id of the script to run. */
/** executionContextId:[int] Specifies in which execution context to perform script run. If the parameter is omitted the
evaluation will be performed in the context of the inspected page. */
/** objectGroup:[String] Symbolic group name that can be used to release multiple objects. */
/** silent:[bool] In silent mode exceptions thrown during evaluation are not reported and do not pause
execution. Overrides `setPauseOnException` state. */
/** includeCommandLineAPI:[bool] Determines whether Command Line API should be available during the evaluation. */
/** returnByValue:[bool] Whether the result is expected to be a JSON object which should be sent by value. */
/** generatePreview:[bool] Whether preview should be generated for the result. */
/** awaitPromise:[bool] Whether execution should `await` for resulting value and return once awaited promise is
resolved. */
  dart_async.Future<RuntimeRunScriptResponse> runScript(
      {String scriptId,
      int executionContextId,
      String objectGroup,
      bool silent,
      bool includeCommandLineAPI,
      bool returnByValue,
      bool generatePreview,
      bool awaitPromise}) {
    var params = {};
    if (scriptId != null) params['scriptId'] = scriptId;

    if (executionContextId != null)
      params['executionContextId'] = executionContextId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    if (silent != null) params['silent'] = silent;

    if (includeCommandLineAPI != null)
      params['includeCommandLineAPI'] = includeCommandLineAPI;

    if (returnByValue != null) params['returnByValue'] = returnByValue;

    if (generatePreview != null) params['generatePreview'] = generatePreview;

    if (awaitPromise != null) params['awaitPromise'] = awaitPromise;

    return _devtools.rpc
        .sendRequest('Runtime.runScript', params)
        .then((response) => new RuntimeRunScriptResponse(response));
  }

/**  */
/** enabled:[bool]  */
  dart_async.Future setCustomObjectFormatterEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc
        .sendRequest('Runtime.setCustomObjectFormatterEnabled', params);
  }

/** Broadcast stream: Issued when console API was called. */
  dart_async.Stream<RuntimeConsoleAPICalledEvent> get onConsoleAPICalled =>
      _onConsoleAPICalled.stream;
/** Broadcast stream: Issued when unhandled exception was revoked. */
  dart_async.Stream<RuntimeExceptionRevokedEvent> get onExceptionRevoked =>
      _onExceptionRevoked.stream;
/** Broadcast stream: Issued when exception was thrown and unhandled. */
  dart_async.Stream<RuntimeExceptionThrownEvent> get onExceptionThrown =>
      _onExceptionThrown.stream;
/** Broadcast stream: Issued when new execution context is created. */
  dart_async.Stream<RuntimeExecutionContextCreatedEvent>
      get onExecutionContextCreated => _onExecutionContextCreated.stream;
/** Broadcast stream: Issued when execution context is destroyed. */
  dart_async.Stream<RuntimeExecutionContextDestroyedEvent>
      get onExecutionContextDestroyed => _onExecutionContextDestroyed.stream;
/** Broadcast stream: Issued when all executionContexts were cleared in browser */
  dart_async.Stream<RuntimeExecutionContextsClearedEvent>
      get onExecutionContextsCleared => _onExecutionContextsCleared.stream;
/** Broadcast stream: Issued when object should be inspected (for example, as a result of inspect() command line API
call). */
  dart_async.Stream<RuntimeInspectRequestedEvent> get onInspectRequested =>
      _onInspectRequested.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Runtime.consoleAPICalled',
        (json_rpc_2.Parameters params) {
      _onConsoleAPICalled.add(new RuntimeConsoleAPICalledEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.exceptionRevoked',
        (json_rpc_2.Parameters params) {
      _onExceptionRevoked.add(new RuntimeExceptionRevokedEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.exceptionThrown',
        (json_rpc_2.Parameters params) {
      _onExceptionThrown.add(new RuntimeExceptionThrownEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.executionContextCreated',
        (json_rpc_2.Parameters params) {
      _onExecutionContextCreated
          .add(new RuntimeExecutionContextCreatedEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.executionContextDestroyed',
        (json_rpc_2.Parameters params) {
      _onExecutionContextDestroyed
          .add(new RuntimeExecutionContextDestroyedEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.executionContextsCleared',
        (json_rpc_2.Parameters params) {
      _onExecutionContextsCleared
          .add(new RuntimeExecutionContextsClearedEvent(params.asMap));
    });

    rpc.registerMethod('Runtime.inspectRequested',
        (json_rpc_2.Parameters params) {
      _onInspectRequested.add(new RuntimeInspectRequestedEvent(params.asMap));
    });
  }

  void _close() {
    _onConsoleAPICalled.close();
    _onExceptionRevoked.close();
    _onExceptionThrown.close();
    _onExecutionContextCreated.close();
    _onExecutionContextDestroyed.close();
    _onExecutionContextsCleared.close();
    _onInspectRequested.close();
  }
}

class SchemaGetDomainsResponse {
  SchemaGetDomainsResponse(Map map) {
    domains = map['domains'] is Iterable
        ? map['domains'].map((m) => new Domain(m)).toList()
        : null;
  }

  List<Domain> domains;
}

class DevToolsSchema {
  DevToolsSchema(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns supported domains. */
  dart_async.Future<SchemaGetDomainsResponse> getDomains() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Schema.getDomains', params)
        .then((response) => new SchemaGetDomainsResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class AccessibilityGetPartialAXTreeResponse {
  AccessibilityGetPartialAXTreeResponse(Map map) {
    nodes = map['nodes'] is Iterable
        ? map['nodes'].map((m) => new AXNode(m)).toList()
        : null;
  }

  List<AXNode> nodes;
}

class DevToolsAccessibility {
  DevToolsAccessibility(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Fetches the accessibility node and partial accessibility tree for this DOM node, if it exists. */
/** nodeId:[int] ID of node to get the partial accessibility tree for. */
/** fetchRelatives:[bool] Whether to fetch this nodes ancestors, siblings and children. Defaults to true. */
  dart_async.Future<AccessibilityGetPartialAXTreeResponse> getPartialAXTree(
      {int nodeId, bool fetchRelatives}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (fetchRelatives != null) params['fetchRelatives'] = fetchRelatives;

    return _devtools.rpc
        .sendRequest('Accessibility.getPartialAXTree', params)
        .then(
            (response) => new AccessibilityGetPartialAXTreeResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class AnimationGetCurrentTimeResponse {
  AnimationGetCurrentTimeResponse(Map map) {
    currentTime = map['currentTime'];
  }

  num currentTime;
}

class AnimationGetPlaybackRateResponse {
  AnimationGetPlaybackRateResponse(Map map) {
    playbackRate = map['playbackRate'];
  }

  num playbackRate;
}

class AnimationResolveAnimationResponse {
  AnimationResolveAnimationResponse(Map map) {
    remoteObject = map.containsKey('remoteObject')
        ? new RemoteObject(map['remoteObject'])
        : null;
  }

  RemoteObject remoteObject;
}

/// Fired on `Animation.animationCanceled`.
class AnimationAnimationCanceledEvent {
  AnimationAnimationCanceledEvent(Map map) {
    id = map['id'];
  }

/** Id of the animation that was cancelled. */
  String id;
}

/// Fired on `Animation.animationCreated`.
class AnimationAnimationCreatedEvent {
  AnimationAnimationCreatedEvent(Map map) {
    id = map['id'];
  }

/** Id of the animation that was created. */
  String id;
}

/// Fired on `Animation.animationStarted`.
class AnimationAnimationStartedEvent {
  AnimationAnimationStartedEvent(Map map) {
    animation =
        map.containsKey('animation') ? new Animation(map['animation']) : null;
  }

/** Animation that was started. */
  Animation animation;
}

class DevToolsAnimation {
  DevToolsAnimation(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<AnimationAnimationCanceledEvent>
      _onAnimationCanceled = new dart_async.StreamController.broadcast();

  dart_async.StreamController<AnimationAnimationCreatedEvent>
      _onAnimationCreated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<AnimationAnimationStartedEvent>
      _onAnimationStarted = new dart_async.StreamController.broadcast();

/** Disables animation domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Animation.disable', params);
  }

/** Enables animation domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Animation.enable', params);
  }

/** Returns the current time of the an animation. */
/** id:[String] Id of animation. */
  dart_async.Future<AnimationGetCurrentTimeResponse> getCurrentTime(
      {String id}) {
    var params = {};
    if (id != null) params['id'] = id;

    return _devtools.rpc
        .sendRequest('Animation.getCurrentTime', params)
        .then((response) => new AnimationGetCurrentTimeResponse(response));
  }

/** Gets the playback rate of the document timeline. */
  dart_async.Future<AnimationGetPlaybackRateResponse> getPlaybackRate() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Animation.getPlaybackRate', params)
        .then((response) => new AnimationGetPlaybackRateResponse(response));
  }

/** Releases a set of animations to no longer be manipulated. */
/** animations:[List] List of animation ids to seek. */
  dart_async.Future releaseAnimations({List animations}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    return _devtools.rpc.sendRequest('Animation.releaseAnimations', params);
  }

/** Gets the remote object of the Animation. */
/** animationId:[String] Animation id. */
  dart_async.Future<AnimationResolveAnimationResponse> resolveAnimation(
      {String animationId}) {
    var params = {};
    if (animationId != null) params['animationId'] = animationId;

    return _devtools.rpc
        .sendRequest('Animation.resolveAnimation', params)
        .then((response) => new AnimationResolveAnimationResponse(response));
  }

/** Seek a set of animations to a particular time within each animation. */
/** animations:[List] List of animation ids to seek. */
/** currentTime:[num] Set the current time of each animation. */
  dart_async.Future seekAnimations({List animations, num currentTime}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    if (currentTime != null) params['currentTime'] = currentTime;

    return _devtools.rpc.sendRequest('Animation.seekAnimations', params);
  }

/** Sets the paused state of a set of animations. */
/** animations:[List] Animations to set the pause state of. */
/** paused:[bool] Paused state to set to. */
  dart_async.Future setPaused({List animations, bool paused}) {
    var params = {};
    if (animations != null) params['animations'] = animations;

    if (paused != null) params['paused'] = paused;

    return _devtools.rpc.sendRequest('Animation.setPaused', params);
  }

/** Sets the playback rate of the document timeline. */
/** playbackRate:[num] Playback rate for animations on page */
  dart_async.Future setPlaybackRate({num playbackRate}) {
    var params = {};
    if (playbackRate != null) params['playbackRate'] = playbackRate;

    return _devtools.rpc.sendRequest('Animation.setPlaybackRate', params);
  }

/** Sets the timing of an animation node. */
/** animationId:[String] Animation id. */
/** duration:[num] Duration of the animation. */
/** delay:[num] Delay of the animation. */
  dart_async.Future setTiming({String animationId, num duration, num delay}) {
    var params = {};
    if (animationId != null) params['animationId'] = animationId;

    if (duration != null) params['duration'] = duration;

    if (delay != null) params['delay'] = delay;

    return _devtools.rpc.sendRequest('Animation.setTiming', params);
  }

/** Broadcast stream: Event for when an animation has been cancelled. */
  dart_async.Stream<AnimationAnimationCanceledEvent> get onAnimationCanceled =>
      _onAnimationCanceled.stream;
/** Broadcast stream: Event for each animation that has been created. */
  dart_async.Stream<AnimationAnimationCreatedEvent> get onAnimationCreated =>
      _onAnimationCreated.stream;
/** Broadcast stream: Event for animation that has been started. */
  dart_async.Stream<AnimationAnimationStartedEvent> get onAnimationStarted =>
      _onAnimationStarted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Animation.animationCanceled',
        (json_rpc_2.Parameters params) {
      _onAnimationCanceled
          .add(new AnimationAnimationCanceledEvent(params.asMap));
    });

    rpc.registerMethod('Animation.animationCreated',
        (json_rpc_2.Parameters params) {
      _onAnimationCreated.add(new AnimationAnimationCreatedEvent(params.asMap));
    });

    rpc.registerMethod('Animation.animationStarted',
        (json_rpc_2.Parameters params) {
      _onAnimationStarted.add(new AnimationAnimationStartedEvent(params.asMap));
    });
  }

  void _close() {
    _onAnimationCanceled.close();
    _onAnimationCreated.close();
    _onAnimationStarted.close();
  }
}

class ApplicationCacheGetApplicationCacheForFrameResponse {
  ApplicationCacheGetApplicationCacheForFrameResponse(Map map) {
    applicationCache = map.containsKey('applicationCache')
        ? new ApplicationCache(map['applicationCache'])
        : null;
  }

  ApplicationCache applicationCache;
}

class ApplicationCacheGetFramesWithManifestsResponse {
  ApplicationCacheGetFramesWithManifestsResponse(Map map) {
    frameIds = map['frameIds'] is Iterable
        ? map['frameIds'].map((m) => new FrameWithManifest(m)).toList()
        : null;
  }

  List<FrameWithManifest> frameIds;
}

class ApplicationCacheGetManifestForFrameResponse {
  ApplicationCacheGetManifestForFrameResponse(Map map) {
    manifestURL = map['manifestURL'];
  }

  String manifestURL;
}

/// Fired on `ApplicationCache.applicationCacheStatusUpdated`.
class ApplicationCacheApplicationCacheStatusUpdatedEvent {
  ApplicationCacheApplicationCacheStatusUpdatedEvent(Map map) {
    frameId = map['frameId'];
    manifestURL = map['manifestURL'];
    status = map['status'];
  }

/** Identifier of the frame containing document whose application cache updated status. */
  String frameId;

/** Manifest URL. */
  String manifestURL;

/** Updated application cache status. */
  int status;
}

/// Fired on `ApplicationCache.networkStateUpdated`.
class ApplicationCacheNetworkStateUpdatedEvent {
  ApplicationCacheNetworkStateUpdatedEvent(Map map) {
    isNowOnline = map['isNowOnline'];
  }

/**  */
  bool isNowOnline;
}

class DevToolsApplicationCache {
  DevToolsApplicationCache(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async
          .StreamController<ApplicationCacheApplicationCacheStatusUpdatedEvent>
      _onApplicationCacheStatusUpdated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<ApplicationCacheNetworkStateUpdatedEvent>
      _onNetworkStateUpdated = new dart_async.StreamController.broadcast();

/** Enables application cache domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('ApplicationCache.enable', params);
  }

/** Returns relevant application cache data for the document in given frame. */
/** frameId:[String] Identifier of the frame containing document whose application cache is retrieved. */
  dart_async.Future<ApplicationCacheGetApplicationCacheForFrameResponse>
      getApplicationCacheForFrame({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('ApplicationCache.getApplicationCacheForFrame', params)
        .then((response) =>
            new ApplicationCacheGetApplicationCacheForFrameResponse(response));
  }

/** Returns array of frame identifiers with manifest urls for each frame containing a document
associated with some application cache. */
  dart_async.Future<ApplicationCacheGetFramesWithManifestsResponse>
      getFramesWithManifests() {
    var params = {};
    return _devtools.rpc
        .sendRequest('ApplicationCache.getFramesWithManifests', params)
        .then((response) =>
            new ApplicationCacheGetFramesWithManifestsResponse(response));
  }

/** Returns manifest URL for document in the given frame. */
/** frameId:[String] Identifier of the frame containing document whose manifest is retrieved. */
  dart_async.Future<ApplicationCacheGetManifestForFrameResponse>
      getManifestForFrame({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('ApplicationCache.getManifestForFrame', params)
        .then((response) =>
            new ApplicationCacheGetManifestForFrameResponse(response));
  }

/** Broadcast stream:  */
  dart_async.Stream<ApplicationCacheApplicationCacheStatusUpdatedEvent>
      get onApplicationCacheStatusUpdated =>
          _onApplicationCacheStatusUpdated.stream;
/** Broadcast stream:  */
  dart_async.Stream<ApplicationCacheNetworkStateUpdatedEvent>
      get onNetworkStateUpdated => _onNetworkStateUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('ApplicationCache.applicationCacheStatusUpdated',
        (json_rpc_2.Parameters params) {
      _onApplicationCacheStatusUpdated.add(
          new ApplicationCacheApplicationCacheStatusUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('ApplicationCache.networkStateUpdated',
        (json_rpc_2.Parameters params) {
      _onNetworkStateUpdated
          .add(new ApplicationCacheNetworkStateUpdatedEvent(params.asMap));
    });
  }

  void _close() {
    _onApplicationCacheStatusUpdated.close();
    _onNetworkStateUpdated.close();
  }
}

class AuditsGetEncodedResponseResponse {
  AuditsGetEncodedResponseResponse(Map map) {
    body = map['body'];
    originalSize = map['originalSize'];
    encodedSize = map['encodedSize'];
  }

  String body;

  int originalSize;

  int encodedSize;
}

class DevToolsAudits {
  DevToolsAudits(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns the response body and size if it were re-encoded with the specified settings. Only
applies to images. */
/** requestId:[String] Identifier of the network request to get content for. */
/** encoding:[String] The encoding to use. */
/** quality:[num] The quality of the encoding (0-1). (defaults to 1) */
/** sizeOnly:[bool] Whether to only return the size information (defaults to false). */
  dart_async.Future<AuditsGetEncodedResponseResponse> getEncodedResponse(
      {String requestId, String encoding, num quality, bool sizeOnly}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    if (encoding != null) params['encoding'] = encoding;

    if (quality != null) params['quality'] = quality;

    if (sizeOnly != null) params['sizeOnly'] = sizeOnly;

    return _devtools.rpc
        .sendRequest('Audits.getEncodedResponse', params)
        .then((response) => new AuditsGetEncodedResponseResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class BrowserGetVersionResponse {
  BrowserGetVersionResponse(Map map) {
    protocolVersion = map['protocolVersion'];
    product = map['product'];
    revision = map['revision'];
    userAgent = map['userAgent'];
    jsVersion = map['jsVersion'];
  }

  String protocolVersion;

  String product;

  String revision;

  String userAgent;

  String jsVersion;
}

class BrowserGetHistogramsResponse {
  BrowserGetHistogramsResponse(Map map) {
    histograms = map['histograms'] is Iterable
        ? map['histograms'].map((m) => new Histogram(m)).toList()
        : null;
  }

  List<Histogram> histograms;
}

class BrowserGetHistogramResponse {
  BrowserGetHistogramResponse(Map map) {
    histogram =
        map.containsKey('histogram') ? new Histogram(map['histogram']) : null;
  }

  Histogram histogram;
}

class BrowserGetWindowBoundsResponse {
  BrowserGetWindowBoundsResponse(Map map) {
    bounds = map.containsKey('bounds') ? new Bounds(map['bounds']) : null;
  }

  Bounds bounds;
}

class BrowserGetWindowForTargetResponse {
  BrowserGetWindowForTargetResponse(Map map) {
    windowId = map['windowId'];
    bounds = map.containsKey('bounds') ? new Bounds(map['bounds']) : null;
  }

  int windowId;

  Bounds bounds;
}

class DevToolsBrowser {
  DevToolsBrowser(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Close browser gracefully. */
  dart_async.Future close() {
    var params = {};
    return _devtools.rpc.sendRequest('Browser.close', params);
  }

/** Returns version information. */
  dart_async.Future<BrowserGetVersionResponse> getVersion() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Browser.getVersion', params)
        .then((response) => new BrowserGetVersionResponse(response));
  }

/** Get Chrome histograms. */
/** query:[String] Requested substring in name. Only histograms which have query as a
substring in their name are extracted. An empty or absent query returns
all histograms. */
  dart_async.Future<BrowserGetHistogramsResponse> getHistograms(
      {String query}) {
    var params = {};
    if (query != null) params['query'] = query;

    return _devtools.rpc
        .sendRequest('Browser.getHistograms', params)
        .then((response) => new BrowserGetHistogramsResponse(response));
  }

/** Get a Chrome histogram by name. */
/** name:[String] Requested histogram name. */
  dart_async.Future<BrowserGetHistogramResponse> getHistogram({String name}) {
    var params = {};
    if (name != null) params['name'] = name;

    return _devtools.rpc
        .sendRequest('Browser.getHistogram', params)
        .then((response) => new BrowserGetHistogramResponse(response));
  }

/** Get position and size of the browser window. */
/** windowId:[int] Browser window id. */
  dart_async.Future<BrowserGetWindowBoundsResponse> getWindowBounds(
      {int windowId}) {
    var params = {};
    if (windowId != null) params['windowId'] = windowId;

    return _devtools.rpc
        .sendRequest('Browser.getWindowBounds', params)
        .then((response) => new BrowserGetWindowBoundsResponse(response));
  }

/** Get the browser window that contains the devtools target. */
/** targetId:[String] Devtools agent host id. */
  dart_async.Future<BrowserGetWindowForTargetResponse> getWindowForTarget(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Browser.getWindowForTarget', params)
        .then((response) => new BrowserGetWindowForTargetResponse(response));
  }

/** Set position and/or size of the browser window. */
/** windowId:[int] Browser window id. */
/** bounds:[Bounds] New window bounds. The 'minimized', 'maximized' and 'fullscreen' states cannot be combined
with 'left', 'top', 'width' or 'height'. Leaves unspecified fields unchanged. */
  dart_async.Future setWindowBounds({int windowId, Bounds bounds}) {
    var params = {};
    if (windowId != null) params['windowId'] = windowId;

    if (bounds != null) params['bounds'] = bounds;

    return _devtools.rpc.sendRequest('Browser.setWindowBounds', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class CSSAddRuleResponse {
  CSSAddRuleResponse(Map map) {
    rule = map.containsKey('rule') ? new CSSRule(map['rule']) : null;
  }

  CSSRule rule;
}

class CSSCollectClassNamesResponse {
  CSSCollectClassNamesResponse(Map map) {
    classNames = map['classNames'];
  }

  List classNames;
}

class CSSCreateStyleSheetResponse {
  CSSCreateStyleSheetResponse(Map map) {
    styleSheetId = map['styleSheetId'];
  }

  String styleSheetId;
}

class CSSGetBackgroundColorsResponse {
  CSSGetBackgroundColorsResponse(Map map) {
    backgroundColors = map['backgroundColors'];
    computedFontSize = map['computedFontSize'];
    computedFontWeight = map['computedFontWeight'];
    computedBodyFontSize = map['computedBodyFontSize'];
  }

  List backgroundColors;

  String computedFontSize;

  String computedFontWeight;

  String computedBodyFontSize;
}

class CSSGetComputedStyleForNodeResponse {
  CSSGetComputedStyleForNodeResponse(Map map) {
    computedStyle = map['computedStyle'] is Iterable
        ? map['computedStyle']
            .map((m) => new CSSComputedStyleProperty(m))
            .toList()
        : null;
  }

  List<CSSComputedStyleProperty> computedStyle;
}

class CSSGetInlineStylesForNodeResponse {
  CSSGetInlineStylesForNodeResponse(Map map) {
    inlineStyle = map.containsKey('inlineStyle')
        ? new CSSStyle(map['inlineStyle'])
        : null;
    attributesStyle = map.containsKey('attributesStyle')
        ? new CSSStyle(map['attributesStyle'])
        : null;
  }

  CSSStyle inlineStyle;

  CSSStyle attributesStyle;
}

class CSSGetMatchedStylesForNodeResponse {
  CSSGetMatchedStylesForNodeResponse(Map map) {
    inlineStyle = map.containsKey('inlineStyle')
        ? new CSSStyle(map['inlineStyle'])
        : null;
    attributesStyle = map.containsKey('attributesStyle')
        ? new CSSStyle(map['attributesStyle'])
        : null;
    matchedCSSRules = map['matchedCSSRules'] is Iterable
        ? map['matchedCSSRules'].map((m) => new RuleMatch(m)).toList()
        : null;
    pseudoElements = map['pseudoElements'] is Iterable
        ? map['pseudoElements'].map((m) => new PseudoElementMatches(m)).toList()
        : null;
    inherited = map['inherited'] is Iterable
        ? map['inherited'].map((m) => new InheritedStyleEntry(m)).toList()
        : null;
    cssKeyframesRules = map['cssKeyframesRules'] is Iterable
        ? map['cssKeyframesRules'].map((m) => new CSSKeyframesRule(m)).toList()
        : null;
  }

  CSSStyle inlineStyle;

  CSSStyle attributesStyle;

  List<RuleMatch> matchedCSSRules;

  List<PseudoElementMatches> pseudoElements;

  List<InheritedStyleEntry> inherited;

  List<CSSKeyframesRule> cssKeyframesRules;
}

class CSSGetMediaQueriesResponse {
  CSSGetMediaQueriesResponse(Map map) {
    medias = map['medias'] is Iterable
        ? map['medias'].map((m) => new CSSMedia(m)).toList()
        : null;
  }

  List<CSSMedia> medias;
}

class CSSGetPlatformFontsForNodeResponse {
  CSSGetPlatformFontsForNodeResponse(Map map) {
    fonts = map['fonts'] is Iterable
        ? map['fonts'].map((m) => new PlatformFontUsage(m)).toList()
        : null;
  }

  List<PlatformFontUsage> fonts;
}

class CSSGetStyleSheetTextResponse {
  CSSGetStyleSheetTextResponse(Map map) {
    text = map['text'];
  }

  String text;
}

class CSSSetKeyframeKeyResponse {
  CSSSetKeyframeKeyResponse(Map map) {
    keyText = map.containsKey('keyText') ? new Value(map['keyText']) : null;
  }

  Value keyText;
}

class CSSSetMediaTextResponse {
  CSSSetMediaTextResponse(Map map) {
    media = map.containsKey('media') ? new CSSMedia(map['media']) : null;
  }

  CSSMedia media;
}

class CSSSetRuleSelectorResponse {
  CSSSetRuleSelectorResponse(Map map) {
    selectorList = map.containsKey('selectorList')
        ? new SelectorList(map['selectorList'])
        : null;
  }

  SelectorList selectorList;
}

class CSSSetStyleSheetTextResponse {
  CSSSetStyleSheetTextResponse(Map map) {
    sourceMapURL = map['sourceMapURL'];
  }

  String sourceMapURL;
}

class CSSSetStyleTextsResponse {
  CSSSetStyleTextsResponse(Map map) {
    styles = map['styles'] is Iterable
        ? map['styles'].map((m) => new CSSStyle(m)).toList()
        : null;
  }

  List<CSSStyle> styles;
}

class CSSStopRuleUsageTrackingResponse {
  CSSStopRuleUsageTrackingResponse(Map map) {
    ruleUsage = map['ruleUsage'] is Iterable
        ? map['ruleUsage'].map((m) => new RuleUsage(m)).toList()
        : null;
  }

  List<RuleUsage> ruleUsage;
}

class CSSTakeCoverageDeltaResponse {
  CSSTakeCoverageDeltaResponse(Map map) {
    coverage = map['coverage'] is Iterable
        ? map['coverage'].map((m) => new RuleUsage(m)).toList()
        : null;
  }

  List<RuleUsage> coverage;
}

/// Fired on `CSS.fontsUpdated`.
class CSSFontsUpdatedEvent {
  CSSFontsUpdatedEvent(Map map) {}
}

/// Fired on `CSS.mediaQueryResultChanged`.
class CSSMediaQueryResultChangedEvent {
  CSSMediaQueryResultChangedEvent(Map map) {}
}

/// Fired on `CSS.styleSheetAdded`.
class CSSStyleSheetAddedEvent {
  CSSStyleSheetAddedEvent(Map map) {
    header = map.containsKey('header')
        ? new CSSStyleSheetHeader(map['header'])
        : null;
  }

/** Added stylesheet metainfo. */
  CSSStyleSheetHeader header;
}

/// Fired on `CSS.styleSheetChanged`.
class CSSStyleSheetChangedEvent {
  CSSStyleSheetChangedEvent(Map map) {
    styleSheetId = map['styleSheetId'];
  }

/**  */
  String styleSheetId;
}

/// Fired on `CSS.styleSheetRemoved`.
class CSSStyleSheetRemovedEvent {
  CSSStyleSheetRemovedEvent(Map map) {
    styleSheetId = map['styleSheetId'];
  }

/** Identifier of the removed stylesheet. */
  String styleSheetId;
}

class DevToolsCSS {
  DevToolsCSS(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<CSSFontsUpdatedEvent> _onFontsUpdated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<CSSMediaQueryResultChangedEvent>
      _onMediaQueryResultChanged = new dart_async.StreamController.broadcast();

  dart_async.StreamController<CSSStyleSheetAddedEvent> _onStyleSheetAdded =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<CSSStyleSheetChangedEvent> _onStyleSheetChanged =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<CSSStyleSheetRemovedEvent> _onStyleSheetRemoved =
      new dart_async.StreamController.broadcast();

/** Inserts a new rule with the given `ruleText` in a stylesheet with given `styleSheetId`, at the
position specified by `location`. */
/** styleSheetId:[String] The css style sheet identifier where a new rule should be inserted. */
/** ruleText:[String] The text of a new rule. */
/** location:[SourceRange] Text position of a new rule in the target style sheet. */
  dart_async.Future<CSSAddRuleResponse> addRule(
      {String styleSheetId, String ruleText, SourceRange location}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (ruleText != null) params['ruleText'] = ruleText;

    if (location != null) params['location'] = location;

    return _devtools.rpc
        .sendRequest('CSS.addRule', params)
        .then((response) => new CSSAddRuleResponse(response));
  }

/** Returns all class names from specified stylesheet. */
/** styleSheetId:[String]  */
  dart_async.Future<CSSCollectClassNamesResponse> collectClassNames(
      {String styleSheetId}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    return _devtools.rpc
        .sendRequest('CSS.collectClassNames', params)
        .then((response) => new CSSCollectClassNamesResponse(response));
  }

/** Creates a new special "via-inspector" stylesheet in the frame with given `frameId`. */
/** frameId:[String] Identifier of the frame where "via-inspector" stylesheet should be created. */
  dart_async.Future<CSSCreateStyleSheetResponse> createStyleSheet(
      {String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('CSS.createStyleSheet', params)
        .then((response) => new CSSCreateStyleSheetResponse(response));
  }

/** Disables the CSS agent for the given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.disable', params);
  }

/** Enables the CSS agent for the given page. Clients should not assume that the CSS agent has been
enabled until the result of this command is received. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.enable', params);
  }

/** Ensures that the given node will have specified pseudo-classes whenever its style is computed by
the browser. */
/** nodeId:[int] The element id for which to force the pseudo state. */
/** forcedPseudoClasses:[List] Element pseudo classes to force when computing the element's style. */
  dart_async.Future forcePseudoState({int nodeId, List forcedPseudoClasses}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (forcedPseudoClasses != null)
      params['forcedPseudoClasses'] = forcedPseudoClasses;

    return _devtools.rpc.sendRequest('CSS.forcePseudoState', params);
  }

/**  */
/** nodeId:[int] Id of the node to get background colors for. */
  dart_async.Future<CSSGetBackgroundColorsResponse> getBackgroundColors(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getBackgroundColors', params)
        .then((response) => new CSSGetBackgroundColorsResponse(response));
  }

/** Returns the computed style for a DOM node identified by `nodeId`. */
/** nodeId:[int]  */
  dart_async.Future<CSSGetComputedStyleForNodeResponse> getComputedStyleForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getComputedStyleForNode', params)
        .then((response) => new CSSGetComputedStyleForNodeResponse(response));
  }

/** Returns the styles defined inline (explicitly in the "style" attribute and implicitly, using DOM
attributes) for a DOM node identified by `nodeId`. */
/** nodeId:[int]  */
  dart_async.Future<CSSGetInlineStylesForNodeResponse> getInlineStylesForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getInlineStylesForNode', params)
        .then((response) => new CSSGetInlineStylesForNodeResponse(response));
  }

/** Returns requested styles for a DOM node identified by `nodeId`. */
/** nodeId:[int]  */
  dart_async.Future<CSSGetMatchedStylesForNodeResponse> getMatchedStylesForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getMatchedStylesForNode', params)
        .then((response) => new CSSGetMatchedStylesForNodeResponse(response));
  }

/** Returns all media queries parsed by the rendering engine. */
  dart_async.Future<CSSGetMediaQueriesResponse> getMediaQueries() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.getMediaQueries', params)
        .then((response) => new CSSGetMediaQueriesResponse(response));
  }

/** Requests information about platform fonts which we used to render child TextNodes in the given
node. */
/** nodeId:[int]  */
  dart_async.Future<CSSGetPlatformFontsForNodeResponse> getPlatformFontsForNode(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('CSS.getPlatformFontsForNode', params)
        .then((response) => new CSSGetPlatformFontsForNodeResponse(response));
  }

/** Returns the current textual content and the URL for a stylesheet. */
/** styleSheetId:[String]  */
  dart_async.Future<CSSGetStyleSheetTextResponse> getStyleSheetText(
      {String styleSheetId}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    return _devtools.rpc
        .sendRequest('CSS.getStyleSheetText', params)
        .then((response) => new CSSGetStyleSheetTextResponse(response));
  }

/** Find a rule with the given active property for the given node and set the new value for this
property */
/** nodeId:[int] The element id for which to set property. */
/** propertyName:[String]  */
/** value:[String]  */
  dart_async.Future setEffectivePropertyValueForNode(
      {int nodeId, String propertyName, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (propertyName != null) params['propertyName'] = propertyName;

    if (value != null) params['value'] = value;

    return _devtools.rpc
        .sendRequest('CSS.setEffectivePropertyValueForNode', params);
  }

/** Modifies the keyframe rule key text. */
/** styleSheetId:[String]  */
/** range:[SourceRange]  */
/** keyText:[String]  */
  dart_async.Future<CSSSetKeyframeKeyResponse> setKeyframeKey(
      {String styleSheetId, SourceRange range, String keyText}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (keyText != null) params['keyText'] = keyText;

    return _devtools.rpc
        .sendRequest('CSS.setKeyframeKey', params)
        .then((response) => new CSSSetKeyframeKeyResponse(response));
  }

/** Modifies the rule selector. */
/** styleSheetId:[String]  */
/** range:[SourceRange]  */
/** text:[String]  */
  dart_async.Future<CSSSetMediaTextResponse> setMediaText(
      {String styleSheetId, SourceRange range, String text}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (text != null) params['text'] = text;

    return _devtools.rpc
        .sendRequest('CSS.setMediaText', params)
        .then((response) => new CSSSetMediaTextResponse(response));
  }

/** Modifies the rule selector. */
/** styleSheetId:[String]  */
/** range:[SourceRange]  */
/** selector:[String]  */
  dart_async.Future<CSSSetRuleSelectorResponse> setRuleSelector(
      {String styleSheetId, SourceRange range, String selector}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (range != null) params['range'] = range;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('CSS.setRuleSelector', params)
        .then((response) => new CSSSetRuleSelectorResponse(response));
  }

/** Sets the new stylesheet text. */
/** styleSheetId:[String]  */
/** text:[String]  */
  dart_async.Future<CSSSetStyleSheetTextResponse> setStyleSheetText(
      {String styleSheetId, String text}) {
    var params = {};
    if (styleSheetId != null) params['styleSheetId'] = styleSheetId;

    if (text != null) params['text'] = text;

    return _devtools.rpc
        .sendRequest('CSS.setStyleSheetText', params)
        .then((response) => new CSSSetStyleSheetTextResponse(response));
  }

/** Applies specified style edits one after another in the given order. */
/** edits:[List]  */
  dart_async.Future<CSSSetStyleTextsResponse> setStyleTexts(
      {List<StyleDeclarationEdit> edits}) {
    var params = {};
    if (edits != null) params['edits'] = edits;

    return _devtools.rpc
        .sendRequest('CSS.setStyleTexts', params)
        .then((response) => new CSSSetStyleTextsResponse(response));
  }

/** Enables the selector recording. */
  dart_async.Future startRuleUsageTracking() {
    var params = {};
    return _devtools.rpc.sendRequest('CSS.startRuleUsageTracking', params);
  }

/** Stop tracking rule usage and return the list of rules that were used since last call to
`takeCoverageDelta` (or since start of coverage instrumentation) */
  dart_async.Future<CSSStopRuleUsageTrackingResponse> stopRuleUsageTracking() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.stopRuleUsageTracking', params)
        .then((response) => new CSSStopRuleUsageTrackingResponse(response));
  }

/** Obtain list of rules that became used since last call to this method (or since start of coverage
instrumentation) */
  dart_async.Future<CSSTakeCoverageDeltaResponse> takeCoverageDelta() {
    var params = {};
    return _devtools.rpc
        .sendRequest('CSS.takeCoverageDelta', params)
        .then((response) => new CSSTakeCoverageDeltaResponse(response));
  }

/** Broadcast stream: Fires whenever a web font gets loaded. */
  dart_async.Stream<CSSFontsUpdatedEvent> get onFontsUpdated =>
      _onFontsUpdated.stream;
/** Broadcast stream: Fires whenever a MediaQuery result changes (for example, after a browser window has been
resized.) The current implementation considers only viewport-dependent media features. */
  dart_async.Stream<CSSMediaQueryResultChangedEvent>
      get onMediaQueryResultChanged => _onMediaQueryResultChanged.stream;
/** Broadcast stream: Fired whenever an active document stylesheet is added. */
  dart_async.Stream<CSSStyleSheetAddedEvent> get onStyleSheetAdded =>
      _onStyleSheetAdded.stream;
/** Broadcast stream: Fired whenever a stylesheet is changed as a result of the client operation. */
  dart_async.Stream<CSSStyleSheetChangedEvent> get onStyleSheetChanged =>
      _onStyleSheetChanged.stream;
/** Broadcast stream: Fired whenever an active document stylesheet is removed. */
  dart_async.Stream<CSSStyleSheetRemovedEvent> get onStyleSheetRemoved =>
      _onStyleSheetRemoved.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('CSS.fontsUpdated', (json_rpc_2.Parameters params) {
      _onFontsUpdated.add(new CSSFontsUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('CSS.mediaQueryResultChanged',
        (json_rpc_2.Parameters params) {
      _onMediaQueryResultChanged
          .add(new CSSMediaQueryResultChangedEvent(params.asMap));
    });

    rpc.registerMethod('CSS.styleSheetAdded', (json_rpc_2.Parameters params) {
      _onStyleSheetAdded.add(new CSSStyleSheetAddedEvent(params.asMap));
    });

    rpc.registerMethod('CSS.styleSheetChanged', (json_rpc_2.Parameters params) {
      _onStyleSheetChanged.add(new CSSStyleSheetChangedEvent(params.asMap));
    });

    rpc.registerMethod('CSS.styleSheetRemoved', (json_rpc_2.Parameters params) {
      _onStyleSheetRemoved.add(new CSSStyleSheetRemovedEvent(params.asMap));
    });
  }

  void _close() {
    _onFontsUpdated.close();
    _onMediaQueryResultChanged.close();
    _onStyleSheetAdded.close();
    _onStyleSheetChanged.close();
    _onStyleSheetRemoved.close();
  }
}

class CacheStorageRequestCacheNamesResponse {
  CacheStorageRequestCacheNamesResponse(Map map) {
    caches = map['caches'] is Iterable
        ? map['caches'].map((m) => new Cache(m)).toList()
        : null;
  }

  List<Cache> caches;
}

class CacheStorageRequestCachedResponseResponse {
  CacheStorageRequestCachedResponseResponse(Map map) {
    response = map.containsKey('response')
        ? new CachedResponse(map['response'])
        : null;
  }

  CachedResponse response;
}

class CacheStorageRequestEntriesResponse {
  CacheStorageRequestEntriesResponse(Map map) {
    cacheDataEntries = map['cacheDataEntries'] is Iterable
        ? map['cacheDataEntries'].map((m) => new DataEntry(m)).toList()
        : null;
    hasMore = map['hasMore'];
  }

  List<DataEntry> cacheDataEntries;

  bool hasMore;
}

class DevToolsCacheStorage {
  DevToolsCacheStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Deletes a cache. */
/** cacheId:[String] Id of cache for deletion. */
  dart_async.Future deleteCache({String cacheId}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    return _devtools.rpc.sendRequest('CacheStorage.deleteCache', params);
  }

/** Deletes a cache entry. */
/** cacheId:[String] Id of cache where the entry will be deleted. */
/** request:[String] URL spec of the request. */
  dart_async.Future deleteEntry({String cacheId, String request}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (request != null) params['request'] = request;

    return _devtools.rpc.sendRequest('CacheStorage.deleteEntry', params);
  }

/** Requests cache names. */
/** securityOrigin:[String] Security origin. */
  dart_async.Future<CacheStorageRequestCacheNamesResponse> requestCacheNames(
      {String securityOrigin}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestCacheNames', params)
        .then(
            (response) => new CacheStorageRequestCacheNamesResponse(response));
  }

/** Fetches cache entry. */
/** cacheId:[String] Id of cache that contains the enty. */
/** requestURL:[String] URL spec of the request. */
  dart_async.Future<CacheStorageRequestCachedResponseResponse>
      requestCachedResponse({String cacheId, String requestURL}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (requestURL != null) params['requestURL'] = requestURL;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestCachedResponse', params)
        .then((response) =>
            new CacheStorageRequestCachedResponseResponse(response));
  }

/** Requests data from cache. */
/** cacheId:[String] ID of cache to get entries from. */
/** skipCount:[int] Number of records to skip. */
/** pageSize:[int] Number of records to fetch. */
  dart_async.Future<CacheStorageRequestEntriesResponse> requestEntries(
      {String cacheId, int skipCount, int pageSize}) {
    var params = {};
    if (cacheId != null) params['cacheId'] = cacheId;

    if (skipCount != null) params['skipCount'] = skipCount;

    if (pageSize != null) params['pageSize'] = pageSize;

    return _devtools.rpc
        .sendRequest('CacheStorage.requestEntries', params)
        .then((response) => new CacheStorageRequestEntriesResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMCollectClassNamesFromSubtreeResponse {
  DOMCollectClassNamesFromSubtreeResponse(Map map) {
    classNames = map['classNames'];
  }

  List classNames;
}

class DOMCopyToResponse {
  DOMCopyToResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMDescribeNodeResponse {
  DOMDescribeNodeResponse(Map map) {
    node = map.containsKey('node') ? new Node(map['node']) : null;
  }

  Node node;
}

class DOMGetAttributesResponse {
  DOMGetAttributesResponse(Map map) {
    attributes = map['attributes'];
  }

  List attributes;
}

class DOMGetBoxModelResponse {
  DOMGetBoxModelResponse(Map map) {
    model = map.containsKey('model') ? new BoxModel(map['model']) : null;
  }

  BoxModel model;
}

class DOMGetDocumentResponse {
  DOMGetDocumentResponse(Map map) {
    root = map.containsKey('root') ? new Node(map['root']) : null;
  }

  Node root;
}

class DOMGetFlattenedDocumentResponse {
  DOMGetFlattenedDocumentResponse(Map map) {
    nodes = map['nodes'] is Iterable
        ? map['nodes'].map((m) => new Node(m)).toList()
        : null;
  }

  List<Node> nodes;
}

class DOMGetNodeForLocationResponse {
  DOMGetNodeForLocationResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetOuterHTMLResponse {
  DOMGetOuterHTMLResponse(Map map) {
    outerHTML = map['outerHTML'];
  }

  String outerHTML;
}

class DOMGetRelayoutBoundaryResponse {
  DOMGetRelayoutBoundaryResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetSearchResultsResponse {
  DOMGetSearchResultsResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMMoveToResponse {
  DOMMoveToResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMPerformSearchResponse {
  DOMPerformSearchResponse(Map map) {
    searchId = map['searchId'];
    resultCount = map['resultCount'];
  }

  String searchId;

  int resultCount;
}

class DOMPushNodeByPathToFrontendResponse {
  DOMPushNodeByPathToFrontendResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMPushNodesByBackendIdsToFrontendResponse {
  DOMPushNodesByBackendIdsToFrontendResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMQuerySelectorResponse {
  DOMQuerySelectorResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMQuerySelectorAllResponse {
  DOMQuerySelectorAllResponse(Map map) {
    nodeIds = map['nodeIds'];
  }

  List<int> nodeIds;
}

class DOMRequestNodeResponse {
  DOMRequestNodeResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMResolveNodeResponse {
  DOMResolveNodeResponse(Map map) {
    object = map.containsKey('object') ? new RemoteObject(map['object']) : null;
  }

  RemoteObject object;
}

class DOMSetNodeNameResponse {
  DOMSetNodeNameResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

class DOMGetFrameOwnerResponse {
  DOMGetFrameOwnerResponse(Map map) {
    nodeId = map['nodeId'];
  }

  int nodeId;
}

/// Fired on `DOM.attributeModified`.
class DOMAttributeModifiedEvent {
  DOMAttributeModifiedEvent(Map map) {
    nodeId = map['nodeId'];
    name = map['name'];
    value = map['value'];
  }

/** Id of the node that has changed. */
  int nodeId;

/** Attribute name. */
  String name;

/** Attribute value. */
  String value;
}

/// Fired on `DOM.attributeRemoved`.
class DOMAttributeRemovedEvent {
  DOMAttributeRemovedEvent(Map map) {
    nodeId = map['nodeId'];
    name = map['name'];
  }

/** Id of the node that has changed. */
  int nodeId;

/** A ttribute name. */
  String name;
}

/// Fired on `DOM.characterDataModified`.
class DOMCharacterDataModifiedEvent {
  DOMCharacterDataModifiedEvent(Map map) {
    nodeId = map['nodeId'];
    characterData = map['characterData'];
  }

/** Id of the node that has changed. */
  int nodeId;

/** New text value. */
  String characterData;
}

/// Fired on `DOM.childNodeCountUpdated`.
class DOMChildNodeCountUpdatedEvent {
  DOMChildNodeCountUpdatedEvent(Map map) {
    nodeId = map['nodeId'];
    childNodeCount = map['childNodeCount'];
  }

/** Id of the node that has changed. */
  int nodeId;

/** New node count. */
  int childNodeCount;
}

/// Fired on `DOM.childNodeInserted`.
class DOMChildNodeInsertedEvent {
  DOMChildNodeInsertedEvent(Map map) {
    parentNodeId = map['parentNodeId'];
    previousNodeId = map['previousNodeId'];
    node = map.containsKey('node') ? new Node(map['node']) : null;
  }

/** Id of the node that has changed. */
  int parentNodeId;

/** If of the previous siblint. */
  int previousNodeId;

/** Inserted node data. */
  Node node;
}

/// Fired on `DOM.childNodeRemoved`.
class DOMChildNodeRemovedEvent {
  DOMChildNodeRemovedEvent(Map map) {
    parentNodeId = map['parentNodeId'];
    nodeId = map['nodeId'];
  }

/** Parent id. */
  int parentNodeId;

/** Id of the node that has been removed. */
  int nodeId;
}

/// Fired on `DOM.distributedNodesUpdated`.
class DOMDistributedNodesUpdatedEvent {
  DOMDistributedNodesUpdatedEvent(Map map) {
    insertionPointId = map['insertionPointId'];
    distributedNodes = map['distributedNodes'] is Iterable
        ? map['distributedNodes'].map((m) => new BackendNode(m)).toList()
        : null;
  }

/** Insertion point where distrubuted nodes were updated. */
  int insertionPointId;

/** Distributed nodes for given insertion point. */
  List<BackendNode> distributedNodes;
}

/// Fired on `DOM.documentUpdated`.
class DOMDocumentUpdatedEvent {
  DOMDocumentUpdatedEvent(Map map) {}
}

/// Fired on `DOM.inlineStyleInvalidated`.
class DOMInlineStyleInvalidatedEvent {
  DOMInlineStyleInvalidatedEvent(Map map) {
    nodeIds = map['nodeIds'];
  }

/** Ids of the nodes for which the inline styles have been invalidated. */
  List<int> nodeIds;
}

/// Fired on `DOM.pseudoElementAdded`.
class DOMPseudoElementAddedEvent {
  DOMPseudoElementAddedEvent(Map map) {
    parentId = map['parentId'];
    pseudoElement = map.containsKey('pseudoElement')
        ? new Node(map['pseudoElement'])
        : null;
  }

/** Pseudo element's parent element id. */
  int parentId;

/** The added pseudo element. */
  Node pseudoElement;
}

/// Fired on `DOM.pseudoElementRemoved`.
class DOMPseudoElementRemovedEvent {
  DOMPseudoElementRemovedEvent(Map map) {
    parentId = map['parentId'];
    pseudoElementId = map['pseudoElementId'];
  }

/** Pseudo element's parent element id. */
  int parentId;

/** The removed pseudo element id. */
  int pseudoElementId;
}

/// Fired on `DOM.setChildNodes`.
class DOMSetChildNodesEvent {
  DOMSetChildNodesEvent(Map map) {
    parentId = map['parentId'];
    nodes = map['nodes'] is Iterable
        ? map['nodes'].map((m) => new Node(m)).toList()
        : null;
  }

/** Parent node id to populate with children. */
  int parentId;

/** Child nodes array. */
  List<Node> nodes;
}

/// Fired on `DOM.shadowRootPopped`.
class DOMShadowRootPoppedEvent {
  DOMShadowRootPoppedEvent(Map map) {
    hostId = map['hostId'];
    rootId = map['rootId'];
  }

/** Host element id. */
  int hostId;

/** Shadow root id. */
  int rootId;
}

/// Fired on `DOM.shadowRootPushed`.
class DOMShadowRootPushedEvent {
  DOMShadowRootPushedEvent(Map map) {
    hostId = map['hostId'];
    root = map.containsKey('root') ? new Node(map['root']) : null;
  }

/** Host element id. */
  int hostId;

/** Shadow root. */
  Node root;
}

class DevToolsDOM {
  DevToolsDOM(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<DOMAttributeModifiedEvent> _onAttributeModified =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMAttributeRemovedEvent> _onAttributeRemoved =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMCharacterDataModifiedEvent>
      _onCharacterDataModified = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMChildNodeCountUpdatedEvent>
      _onChildNodeCountUpdated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMChildNodeInsertedEvent> _onChildNodeInserted =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMChildNodeRemovedEvent> _onChildNodeRemoved =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMDistributedNodesUpdatedEvent>
      _onDistributedNodesUpdated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMDocumentUpdatedEvent> _onDocumentUpdated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMInlineStyleInvalidatedEvent>
      _onInlineStyleInvalidated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMPseudoElementAddedEvent>
      _onPseudoElementAdded = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMPseudoElementRemovedEvent>
      _onPseudoElementRemoved = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMSetChildNodesEvent> _onSetChildNodes =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMShadowRootPoppedEvent> _onShadowRootPopped =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMShadowRootPushedEvent> _onShadowRootPushed =
      new dart_async.StreamController.broadcast();

/** Collects class names for the node with given id and all of it's child nodes. */
/** nodeId:[int] Id of the node to collect class names. */
  dart_async.Future<DOMCollectClassNamesFromSubtreeResponse>
      collectClassNamesFromSubtree({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.collectClassNamesFromSubtree', params)
        .then((response) =>
            new DOMCollectClassNamesFromSubtreeResponse(response));
  }

/** Creates a deep copy of the specified node and places it into the target container before the
given anchor. */
/** nodeId:[int] Id of the node to copy. */
/** targetNodeId:[int] Id of the element to drop the copy into. */
/** insertBeforeNodeId:[int] Drop the copy before this node (if absent, the copy becomes the last child of
`targetNodeId`). */
  dart_async.Future<DOMCopyToResponse> copyTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (targetNodeId != null) params['targetNodeId'] = targetNodeId;

    if (insertBeforeNodeId != null)
      params['insertBeforeNodeId'] = insertBeforeNodeId;

    return _devtools.rpc
        .sendRequest('DOM.copyTo', params)
        .then((response) => new DOMCopyToResponse(response));
  }

/** Describes node given its id, does not require domain to be enabled. Does not start tracking any
objects, can be used for automation. */
/** nodeId:[int] Identifier of the node. */
/** backendNodeId:[int] Identifier of the backend node. */
/** objectId:[String] JavaScript object id of the node wrapper. */
/** depth:[int] The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
entire subtree or provide an integer larger than 0. */
/** pierce:[bool] Whether or not iframes and shadow roots should be traversed when returning the subtree
(default is false). */
  dart_async.Future<DOMDescribeNodeResponse> describeNode(
      {int nodeId,
      int backendNodeId,
      String objectId,
      int depth,
      bool pierce}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.describeNode', params)
        .then((response) => new DOMDescribeNodeResponse(response));
  }

/** Disables DOM agent for the given page. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.disable', params);
  }

/** Discards search results from the session with the given id. `getSearchResults` should no longer
be called for that search. */
/** searchId:[String] Unique search session identifier. */
  dart_async.Future discardSearchResults({String searchId}) {
    var params = {};
    if (searchId != null) params['searchId'] = searchId;

    return _devtools.rpc.sendRequest('DOM.discardSearchResults', params);
  }

/** Enables DOM agent for the given page. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.enable', params);
  }

/** Focuses the given element. */
/** nodeId:[int] Identifier of the node. */
/** backendNodeId:[int] Identifier of the backend node. */
/** objectId:[String] JavaScript object id of the node wrapper. */
  dart_async.Future focus({int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('DOM.focus', params);
  }

/** Returns attributes for the specified node. */
/** nodeId:[int] Id of the node to retrieve attibutes for. */
  dart_async.Future<DOMGetAttributesResponse> getAttributes({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.getAttributes', params)
        .then((response) => new DOMGetAttributesResponse(response));
  }

/** Returns boxes for the given node. */
/** nodeId:[int] Identifier of the node. */
/** backendNodeId:[int] Identifier of the backend node. */
/** objectId:[String] JavaScript object id of the node wrapper. */
  dart_async.Future<DOMGetBoxModelResponse> getBoxModel(
      {int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.getBoxModel', params)
        .then((response) => new DOMGetBoxModelResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
/** depth:[int] The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
entire subtree or provide an integer larger than 0. */
/** pierce:[bool] Whether or not iframes and shadow roots should be traversed when returning the subtree
(default is false). */
  dart_async.Future<DOMGetDocumentResponse> getDocument(
      {int depth, bool pierce}) {
    var params = {};
    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.getDocument', params)
        .then((response) => new DOMGetDocumentResponse(response));
  }

/** Returns the root DOM node (and optionally the subtree) to the caller. */
/** depth:[int] The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
entire subtree or provide an integer larger than 0. */
/** pierce:[bool] Whether or not iframes and shadow roots should be traversed when returning the subtree
(default is false). */
  dart_async.Future<DOMGetFlattenedDocumentResponse> getFlattenedDocument(
      {int depth, bool pierce}) {
    var params = {};
    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOM.getFlattenedDocument', params)
        .then((response) => new DOMGetFlattenedDocumentResponse(response));
  }

/** Returns node id at given location. */
/** x:[int] X coordinate. */
/** y:[int] Y coordinate. */
/** includeUserAgentShadowDOM:[bool] False to skip to the nearest non-UA shadow root ancestor (default: false). */
  dart_async.Future<DOMGetNodeForLocationResponse> getNodeForLocation(
      {int x, int y, bool includeUserAgentShadowDOM}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (includeUserAgentShadowDOM != null)
      params['includeUserAgentShadowDOM'] = includeUserAgentShadowDOM;

    return _devtools.rpc
        .sendRequest('DOM.getNodeForLocation', params)
        .then((response) => new DOMGetNodeForLocationResponse(response));
  }

/** Returns node's HTML markup. */
/** nodeId:[int] Identifier of the node. */
/** backendNodeId:[int] Identifier of the backend node. */
/** objectId:[String] JavaScript object id of the node wrapper. */
  dart_async.Future<DOMGetOuterHTMLResponse> getOuterHTML(
      {int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.getOuterHTML', params)
        .then((response) => new DOMGetOuterHTMLResponse(response));
  }

/** Returns the id of the nearest ancestor that is a relayout boundary. */
/** nodeId:[int] Id of the node. */
  dart_async.Future<DOMGetRelayoutBoundaryResponse> getRelayoutBoundary(
      {int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('DOM.getRelayoutBoundary', params)
        .then((response) => new DOMGetRelayoutBoundaryResponse(response));
  }

/** Returns search results from given `fromIndex` to given `toIndex` from the search with the given
identifier. */
/** searchId:[String] Unique search session identifier. */
/** fromIndex:[int] Start index of the search result to be returned. */
/** toIndex:[int] End index of the search result to be returned. */
  dart_async.Future<DOMGetSearchResultsResponse> getSearchResults(
      {String searchId, int fromIndex, int toIndex}) {
    var params = {};
    if (searchId != null) params['searchId'] = searchId;

    if (fromIndex != null) params['fromIndex'] = fromIndex;

    if (toIndex != null) params['toIndex'] = toIndex;

    return _devtools.rpc
        .sendRequest('DOM.getSearchResults', params)
        .then((response) => new DOMGetSearchResultsResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.hideHighlight', params);
  }

/** Highlights DOM node. */
  dart_async.Future highlightNode() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.highlightNode', params);
  }

/** Highlights given rectangle. */
  dart_async.Future highlightRect() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.highlightRect', params);
  }

/** Marks last undoable state. */
  dart_async.Future markUndoableState() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.markUndoableState', params);
  }

/** Moves node into the new container, places it before the given anchor. */
/** nodeId:[int] Id of the node to move. */
/** targetNodeId:[int] Id of the element to drop the moved node into. */
/** insertBeforeNodeId:[int] Drop node before this one (if absent, the moved node becomes the last child of
`targetNodeId`). */
  dart_async.Future<DOMMoveToResponse> moveTo(
      {int nodeId, int targetNodeId, int insertBeforeNodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (targetNodeId != null) params['targetNodeId'] = targetNodeId;

    if (insertBeforeNodeId != null)
      params['insertBeforeNodeId'] = insertBeforeNodeId;

    return _devtools.rpc
        .sendRequest('DOM.moveTo', params)
        .then((response) => new DOMMoveToResponse(response));
  }

/** Searches for a given string in the DOM tree. Use `getSearchResults` to access search results or
`cancelSearch` to end this search session. */
/** query:[String] Plain text or query selector or XPath search query. */
/** includeUserAgentShadowDOM:[bool] True to search in user agent shadow DOM. */
  dart_async.Future<DOMPerformSearchResponse> performSearch(
      {String query, bool includeUserAgentShadowDOM}) {
    var params = {};
    if (query != null) params['query'] = query;

    if (includeUserAgentShadowDOM != null)
      params['includeUserAgentShadowDOM'] = includeUserAgentShadowDOM;

    return _devtools.rpc
        .sendRequest('DOM.performSearch', params)
        .then((response) => new DOMPerformSearchResponse(response));
  }

/** Requests that the node is sent to the caller given its path. // FIXME, use XPath */
/** path:[String] Path to node in the proprietary format. */
  dart_async.Future<DOMPushNodeByPathToFrontendResponse>
      pushNodeByPathToFrontend({String path}) {
    var params = {};
    if (path != null) params['path'] = path;

    return _devtools.rpc
        .sendRequest('DOM.pushNodeByPathToFrontend', params)
        .then((response) => new DOMPushNodeByPathToFrontendResponse(response));
  }

/** Requests that a batch of nodes is sent to the caller given their backend node ids. */
/** backendNodeIds:[List] The array of backend node ids. */
  dart_async.Future<DOMPushNodesByBackendIdsToFrontendResponse>
      pushNodesByBackendIdsToFrontend({List<int> backendNodeIds}) {
    var params = {};
    if (backendNodeIds != null) params['backendNodeIds'] = backendNodeIds;

    return _devtools.rpc
        .sendRequest('DOM.pushNodesByBackendIdsToFrontend', params)
        .then((response) =>
            new DOMPushNodesByBackendIdsToFrontendResponse(response));
  }

/** Executes `querySelector` on a given node. */
/** nodeId:[int] Id of the node to query upon. */
/** selector:[String] Selector string. */
  dart_async.Future<DOMQuerySelectorResponse> querySelector(
      {int nodeId, String selector}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('DOM.querySelector', params)
        .then((response) => new DOMQuerySelectorResponse(response));
  }

/** Executes `querySelectorAll` on a given node. */
/** nodeId:[int] Id of the node to query upon. */
/** selector:[String] Selector string. */
  dart_async.Future<DOMQuerySelectorAllResponse> querySelectorAll(
      {int nodeId, String selector}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (selector != null) params['selector'] = selector;

    return _devtools.rpc
        .sendRequest('DOM.querySelectorAll', params)
        .then((response) => new DOMQuerySelectorAllResponse(response));
  }

/** Re-does the last undone action. */
  dart_async.Future redo() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.redo', params);
  }

/** Removes attribute with given name from an element with given id. */
/** nodeId:[int] Id of the element to remove attribute from. */
/** name:[String] Name of the attribute to remove. */
  dart_async.Future removeAttribute({int nodeId, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    return _devtools.rpc.sendRequest('DOM.removeAttribute', params);
  }

/** Removes node with given id. */
/** nodeId:[int] Id of the node to remove. */
  dart_async.Future removeNode({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc.sendRequest('DOM.removeNode', params);
  }

/** Requests that children of the node with given id are returned to the caller in form of
`setChildNodes` events where not only immediate children are retrieved, but all children down to
the specified depth. */
/** nodeId:[int] Id of the node to get children for. */
/** depth:[int] The maximum depth at which children should be retrieved, defaults to 1. Use -1 for the
entire subtree or provide an integer larger than 0. */
/** pierce:[bool] Whether or not iframes and shadow roots should be traversed when returning the sub-tree
(default is false). */
  dart_async.Future requestChildNodes({int nodeId, int depth, bool pierce}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc.sendRequest('DOM.requestChildNodes', params);
  }

/** Requests that the node is sent to the caller given the JavaScript node object reference. All
nodes that form the path from the node to the root are also sent to the client as a series of
`setChildNodes` notifications. */
/** objectId:[String] JavaScript object id to convert into node. */
  dart_async.Future<DOMRequestNodeResponse> requestNode({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('DOM.requestNode', params)
        .then((response) => new DOMRequestNodeResponse(response));
  }

/** Resolves the JavaScript node object for a given NodeId or BackendNodeId. */
/** nodeId:[int] Id of the node to resolve. */
/** backendNodeId:[int] Backend identifier of the node to resolve. */
/** objectGroup:[String] Symbolic group name that can be used to release multiple objects. */
  dart_async.Future<DOMResolveNodeResponse> resolveNode(
      {int nodeId, int backendNodeId, String objectGroup}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectGroup != null) params['objectGroup'] = objectGroup;

    return _devtools.rpc
        .sendRequest('DOM.resolveNode', params)
        .then((response) => new DOMResolveNodeResponse(response));
  }

/** Sets attribute for an element with given id. */
/** nodeId:[int] Id of the element to set attribute for. */
/** name:[String] Attribute name. */
/** value:[String] Attribute value. */
  dart_async.Future setAttributeValue({int nodeId, String name, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOM.setAttributeValue', params);
  }

/** Sets attributes on element with given id. This method is useful when user edits some existing
attribute value and types in several attribute name/value pairs. */
/** nodeId:[int] Id of the element to set attributes for. */
/** text:[String] Text with a number of attributes. Will parse this text using HTML parser. */
/** name:[String] Attribute name to replace with new attributes derived from text in case text parsed
successfully. */
  dart_async.Future setAttributesAsText(
      {int nodeId, String text, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (text != null) params['text'] = text;

    if (name != null) params['name'] = name;

    return _devtools.rpc.sendRequest('DOM.setAttributesAsText', params);
  }

/** Sets files for the given file input element. */
/** files:[List] Array of file paths to set. */
/** nodeId:[int] Identifier of the node. */
/** backendNodeId:[int] Identifier of the backend node. */
/** objectId:[String] JavaScript object id of the node wrapper. */
  dart_async.Future setFileInputFiles(
      {List files, int nodeId, int backendNodeId, String objectId}) {
    var params = {};
    if (files != null) params['files'] = files;

    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('DOM.setFileInputFiles', params);
  }

/** Enables console to refer to the node with given id via $x (see Command Line API for more details
$x functions). */
/** nodeId:[int] DOM node id to be accessible by means of $x command line API. */
  dart_async.Future setInspectedNode({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc.sendRequest('DOM.setInspectedNode', params);
  }

/** Sets node name for a node with given id. */
/** nodeId:[int] Id of the node to set name for. */
/** name:[String] New node's name. */
  dart_async.Future<DOMSetNodeNameResponse> setNodeName(
      {int nodeId, String name}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (name != null) params['name'] = name;

    return _devtools.rpc
        .sendRequest('DOM.setNodeName', params)
        .then((response) => new DOMSetNodeNameResponse(response));
  }

/** Sets node value for a node with given id. */
/** nodeId:[int] Id of the node to set value for. */
/** value:[String] New node's value. */
  dart_async.Future setNodeValue({int nodeId, String value}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOM.setNodeValue', params);
  }

/** Sets node HTML markup, returns new node id. */
/** nodeId:[int] Id of the node to set markup for. */
/** outerHTML:[String] Outer HTML markup to set. */
  dart_async.Future setOuterHTML({int nodeId, String outerHTML}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (outerHTML != null) params['outerHTML'] = outerHTML;

    return _devtools.rpc.sendRequest('DOM.setOuterHTML', params);
  }

/** Undoes the last performed action. */
  dart_async.Future undo() {
    var params = {};
    return _devtools.rpc.sendRequest('DOM.undo', params);
  }

/** Returns iframe node that owns iframe with the given domain. */
/** frameId:[String]  */
  dart_async.Future<DOMGetFrameOwnerResponse> getFrameOwner({String frameId}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('DOM.getFrameOwner', params)
        .then((response) => new DOMGetFrameOwnerResponse(response));
  }

/** Broadcast stream: Fired when `Element`'s attribute is modified. */
  dart_async.Stream<DOMAttributeModifiedEvent> get onAttributeModified =>
      _onAttributeModified.stream;
/** Broadcast stream: Fired when `Element`'s attribute is removed. */
  dart_async.Stream<DOMAttributeRemovedEvent> get onAttributeRemoved =>
      _onAttributeRemoved.stream;
/** Broadcast stream: Mirrors `DOMCharacterDataModified` event. */
  dart_async.Stream<DOMCharacterDataModifiedEvent>
      get onCharacterDataModified => _onCharacterDataModified.stream;
/** Broadcast stream: Fired when `Container`'s child node count has changed. */
  dart_async.Stream<DOMChildNodeCountUpdatedEvent>
      get onChildNodeCountUpdated => _onChildNodeCountUpdated.stream;
/** Broadcast stream: Mirrors `DOMNodeInserted` event. */
  dart_async.Stream<DOMChildNodeInsertedEvent> get onChildNodeInserted =>
      _onChildNodeInserted.stream;
/** Broadcast stream: Mirrors `DOMNodeRemoved` event. */
  dart_async.Stream<DOMChildNodeRemovedEvent> get onChildNodeRemoved =>
      _onChildNodeRemoved.stream;
/** Broadcast stream: Called when distrubution is changed. */
  dart_async.Stream<DOMDistributedNodesUpdatedEvent>
      get onDistributedNodesUpdated => _onDistributedNodesUpdated.stream;
/** Broadcast stream: Fired when `Document` has been totally updated. Node ids are no longer valid. */
  dart_async.Stream<DOMDocumentUpdatedEvent> get onDocumentUpdated =>
      _onDocumentUpdated.stream;
/** Broadcast stream: Fired when `Element`'s inline style is modified via a CSS property modification. */
  dart_async.Stream<DOMInlineStyleInvalidatedEvent>
      get onInlineStyleInvalidated => _onInlineStyleInvalidated.stream;
/** Broadcast stream: Called when a pseudo element is added to an element. */
  dart_async.Stream<DOMPseudoElementAddedEvent> get onPseudoElementAdded =>
      _onPseudoElementAdded.stream;
/** Broadcast stream: Called when a pseudo element is removed from an element. */
  dart_async.Stream<DOMPseudoElementRemovedEvent> get onPseudoElementRemoved =>
      _onPseudoElementRemoved.stream;
/** Broadcast stream: Fired when backend wants to provide client with the missing DOM structure. This happens upon
most of the calls requesting node ids. */
  dart_async.Stream<DOMSetChildNodesEvent> get onSetChildNodes =>
      _onSetChildNodes.stream;
/** Broadcast stream: Called when shadow root is popped from the element. */
  dart_async.Stream<DOMShadowRootPoppedEvent> get onShadowRootPopped =>
      _onShadowRootPopped.stream;
/** Broadcast stream: Called when shadow root is pushed into the element. */
  dart_async.Stream<DOMShadowRootPushedEvent> get onShadowRootPushed =>
      _onShadowRootPushed.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('DOM.attributeModified', (json_rpc_2.Parameters params) {
      _onAttributeModified.add(new DOMAttributeModifiedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.attributeRemoved', (json_rpc_2.Parameters params) {
      _onAttributeRemoved.add(new DOMAttributeRemovedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.characterDataModified',
        (json_rpc_2.Parameters params) {
      _onCharacterDataModified
          .add(new DOMCharacterDataModifiedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.childNodeCountUpdated',
        (json_rpc_2.Parameters params) {
      _onChildNodeCountUpdated
          .add(new DOMChildNodeCountUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.childNodeInserted', (json_rpc_2.Parameters params) {
      _onChildNodeInserted.add(new DOMChildNodeInsertedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.childNodeRemoved', (json_rpc_2.Parameters params) {
      _onChildNodeRemoved.add(new DOMChildNodeRemovedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.distributedNodesUpdated',
        (json_rpc_2.Parameters params) {
      _onDistributedNodesUpdated
          .add(new DOMDistributedNodesUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.documentUpdated', (json_rpc_2.Parameters params) {
      _onDocumentUpdated.add(new DOMDocumentUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.inlineStyleInvalidated',
        (json_rpc_2.Parameters params) {
      _onInlineStyleInvalidated
          .add(new DOMInlineStyleInvalidatedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.pseudoElementAdded',
        (json_rpc_2.Parameters params) {
      _onPseudoElementAdded.add(new DOMPseudoElementAddedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.pseudoElementRemoved',
        (json_rpc_2.Parameters params) {
      _onPseudoElementRemoved
          .add(new DOMPseudoElementRemovedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.setChildNodes', (json_rpc_2.Parameters params) {
      _onSetChildNodes.add(new DOMSetChildNodesEvent(params.asMap));
    });

    rpc.registerMethod('DOM.shadowRootPopped', (json_rpc_2.Parameters params) {
      _onShadowRootPopped.add(new DOMShadowRootPoppedEvent(params.asMap));
    });

    rpc.registerMethod('DOM.shadowRootPushed', (json_rpc_2.Parameters params) {
      _onShadowRootPushed.add(new DOMShadowRootPushedEvent(params.asMap));
    });
  }

  void _close() {
    _onAttributeModified.close();
    _onAttributeRemoved.close();
    _onCharacterDataModified.close();
    _onChildNodeCountUpdated.close();
    _onChildNodeInserted.close();
    _onChildNodeRemoved.close();
    _onDistributedNodesUpdated.close();
    _onDocumentUpdated.close();
    _onInlineStyleInvalidated.close();
    _onPseudoElementAdded.close();
    _onPseudoElementRemoved.close();
    _onSetChildNodes.close();
    _onShadowRootPopped.close();
    _onShadowRootPushed.close();
  }
}

class DOMDebuggerGetEventListenersResponse {
  DOMDebuggerGetEventListenersResponse(Map map) {
    listeners = map['listeners'] is Iterable
        ? map['listeners'].map((m) => new EventListener(m)).toList()
        : null;
  }

  List<EventListener> listeners;
}

class DevToolsDOMDebugger {
  DevToolsDOMDebugger(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns event listeners of the given object. */
/** objectId:[String] Identifier of the object to return listeners for. */
/** depth:[int] The maximum depth at which Node children should be retrieved, defaults to 1. Use -1 for the
entire subtree or provide an integer larger than 0. */
/** pierce:[bool] Whether or not iframes and shadow roots should be traversed when returning the subtree
(default is false). Reports listeners for all contexts if pierce is enabled. */
  dart_async.Future<DOMDebuggerGetEventListenersResponse> getEventListeners(
      {String objectId, int depth, bool pierce}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    if (depth != null) params['depth'] = depth;

    if (pierce != null) params['pierce'] = pierce;

    return _devtools.rpc
        .sendRequest('DOMDebugger.getEventListeners', params)
        .then((response) => new DOMDebuggerGetEventListenersResponse(response));
  }

/** Removes DOM breakpoint that was set using `setDOMBreakpoint`. */
/** nodeId:[int] Identifier of the node to remove breakpoint from. */
/** type:[String] Type of the breakpoint to remove. */
  dart_async.Future removeDOMBreakpoint({int nodeId, String type}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (type != null) params['type'] = type;

    return _devtools.rpc.sendRequest('DOMDebugger.removeDOMBreakpoint', params);
  }

/** Removes breakpoint on particular DOM event. */
/** eventName:[String] Event name. */
/** targetName:[String] EventTarget interface name. */
  dart_async.Future removeEventListenerBreakpoint(
      {String eventName, String targetName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    if (targetName != null) params['targetName'] = targetName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.removeEventListenerBreakpoint', params);
  }

/** Removes breakpoint on particular native event. */
/** eventName:[String] Instrumentation name to stop on. */
  dart_async.Future removeInstrumentationBreakpoint({String eventName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.removeInstrumentationBreakpoint', params);
  }

/** Removes breakpoint from XMLHttpRequest. */
/** url:[String] Resource URL substring. */
  dart_async.Future removeXHRBreakpoint({String url}) {
    var params = {};
    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('DOMDebugger.removeXHRBreakpoint', params);
  }

/** Sets breakpoint on particular operation with DOM. */
/** nodeId:[int] Identifier of the node to set breakpoint on. */
/** type:[String] Type of the operation to stop upon. */
  dart_async.Future setDOMBreakpoint({int nodeId, String type}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    if (type != null) params['type'] = type;

    return _devtools.rpc.sendRequest('DOMDebugger.setDOMBreakpoint', params);
  }

/** Sets breakpoint on particular DOM event. */
/** eventName:[String] DOM Event name to stop on (any DOM event will do). */
/** targetName:[String] EventTarget interface name to stop on. If equal to `"*"` or not provided, will stop on any
EventTarget. */
  dart_async.Future setEventListenerBreakpoint(
      {String eventName, String targetName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    if (targetName != null) params['targetName'] = targetName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.setEventListenerBreakpoint', params);
  }

/** Sets breakpoint on particular native event. */
/** eventName:[String] Instrumentation name to stop on. */
  dart_async.Future setInstrumentationBreakpoint({String eventName}) {
    var params = {};
    if (eventName != null) params['eventName'] = eventName;

    return _devtools.rpc
        .sendRequest('DOMDebugger.setInstrumentationBreakpoint', params);
  }

/** Sets breakpoint on XMLHttpRequest. */
/** url:[String] Resource URL substring. All XHRs having this substring in the URL will get stopped upon. */
  dart_async.Future setXHRBreakpoint({String url}) {
    var params = {};
    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('DOMDebugger.setXHRBreakpoint', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMSnapshotGetSnapshotResponse {
  DOMSnapshotGetSnapshotResponse(Map map) {
    domNodes = map['domNodes'] is Iterable
        ? map['domNodes'].map((m) => new DOMNode(m)).toList()
        : null;
    layoutTreeNodes = map['layoutTreeNodes'] is Iterable
        ? map['layoutTreeNodes'].map((m) => new LayoutTreeNode(m)).toList()
        : null;
    computedStyles = map['computedStyles'] is Iterable
        ? map['computedStyles'].map((m) => new ComputedStyle(m)).toList()
        : null;
  }

  List<DOMNode> domNodes;

  List<LayoutTreeNode> layoutTreeNodes;

  List<ComputedStyle> computedStyles;
}

class DevToolsDOMSnapshot {
  DevToolsDOMSnapshot(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns a document snapshot, including the full DOM tree of the root node (including iframes,
template contents, and imported documents) in a flattened array, as well as layout and
white-listed computed style information for the nodes. Shadow DOM in the returned DOM tree is
flattened. */
/** computedStyleWhitelist:[List] Whitelist of computed styles to return. */
/** includeEventListeners:[bool] Whether or not to retrieve details of DOM listeners (default false). */
  dart_async.Future<DOMSnapshotGetSnapshotResponse> getSnapshot(
      {List computedStyleWhitelist, bool includeEventListeners}) {
    var params = {};
    if (computedStyleWhitelist != null)
      params['computedStyleWhitelist'] = computedStyleWhitelist;

    if (includeEventListeners != null)
      params['includeEventListeners'] = includeEventListeners;

    return _devtools.rpc
        .sendRequest('DOMSnapshot.getSnapshot', params)
        .then((response) => new DOMSnapshotGetSnapshotResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DOMStorageGetDOMStorageItemsResponse {
  DOMStorageGetDOMStorageItemsResponse(Map map) {
    entries = map['entries'];
  }

  List<List> entries;
}

/// Fired on `DOMStorage.domStorageItemAdded`.
class DOMStorageDomStorageItemAddedEvent {
  DOMStorageDomStorageItemAddedEvent(Map map) {
    storageId =
        map.containsKey('storageId') ? new StorageId(map['storageId']) : null;
    key = map['key'];
    newValue = map['newValue'];
  }

/**  */
  StorageId storageId;

/**  */
  String key;

/**  */
  String newValue;
}

/// Fired on `DOMStorage.domStorageItemRemoved`.
class DOMStorageDomStorageItemRemovedEvent {
  DOMStorageDomStorageItemRemovedEvent(Map map) {
    storageId =
        map.containsKey('storageId') ? new StorageId(map['storageId']) : null;
    key = map['key'];
  }

/**  */
  StorageId storageId;

/**  */
  String key;
}

/// Fired on `DOMStorage.domStorageItemUpdated`.
class DOMStorageDomStorageItemUpdatedEvent {
  DOMStorageDomStorageItemUpdatedEvent(Map map) {
    storageId =
        map.containsKey('storageId') ? new StorageId(map['storageId']) : null;
    key = map['key'];
    oldValue = map['oldValue'];
    newValue = map['newValue'];
  }

/**  */
  StorageId storageId;

/**  */
  String key;

/**  */
  String oldValue;

/**  */
  String newValue;
}

/// Fired on `DOMStorage.domStorageItemsCleared`.
class DOMStorageDomStorageItemsClearedEvent {
  DOMStorageDomStorageItemsClearedEvent(Map map) {
    storageId =
        map.containsKey('storageId') ? new StorageId(map['storageId']) : null;
  }

/**  */
  StorageId storageId;
}

class DevToolsDOMStorage {
  DevToolsDOMStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<DOMStorageDomStorageItemAddedEvent>
      _onDomStorageItemAdded = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMStorageDomStorageItemRemovedEvent>
      _onDomStorageItemRemoved = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMStorageDomStorageItemUpdatedEvent>
      _onDomStorageItemUpdated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<DOMStorageDomStorageItemsClearedEvent>
      _onDomStorageItemsCleared = new dart_async.StreamController.broadcast();

/**  */
/** storageId:[StorageId]  */
  dart_async.Future clear({StorageId storageId}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    return _devtools.rpc.sendRequest('DOMStorage.clear', params);
  }

/** Disables storage tracking, prevents storage events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOMStorage.disable', params);
  }

/** Enables storage tracking, storage events will now be delivered to the client. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('DOMStorage.enable', params);
  }

/**  */
/** storageId:[StorageId]  */
  dart_async.Future<DOMStorageGetDOMStorageItemsResponse> getDOMStorageItems(
      {StorageId storageId}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    return _devtools.rpc
        .sendRequest('DOMStorage.getDOMStorageItems', params)
        .then((response) => new DOMStorageGetDOMStorageItemsResponse(response));
  }

/**  */
/** storageId:[StorageId]  */
/** key:[String]  */
  dart_async.Future removeDOMStorageItem({StorageId storageId, String key}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    if (key != null) params['key'] = key;

    return _devtools.rpc.sendRequest('DOMStorage.removeDOMStorageItem', params);
  }

/**  */
/** storageId:[StorageId]  */
/** key:[String]  */
/** value:[String]  */
  dart_async.Future setDOMStorageItem(
      {StorageId storageId, String key, String value}) {
    var params = {};
    if (storageId != null) params['storageId'] = storageId;

    if (key != null) params['key'] = key;

    if (value != null) params['value'] = value;

    return _devtools.rpc.sendRequest('DOMStorage.setDOMStorageItem', params);
  }

/** Broadcast stream:  */
  dart_async.Stream<DOMStorageDomStorageItemAddedEvent>
      get onDomStorageItemAdded => _onDomStorageItemAdded.stream;
/** Broadcast stream:  */
  dart_async.Stream<DOMStorageDomStorageItemRemovedEvent>
      get onDomStorageItemRemoved => _onDomStorageItemRemoved.stream;
/** Broadcast stream:  */
  dart_async.Stream<DOMStorageDomStorageItemUpdatedEvent>
      get onDomStorageItemUpdated => _onDomStorageItemUpdated.stream;
/** Broadcast stream:  */
  dart_async.Stream<DOMStorageDomStorageItemsClearedEvent>
      get onDomStorageItemsCleared => _onDomStorageItemsCleared.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('DOMStorage.domStorageItemAdded',
        (json_rpc_2.Parameters params) {
      _onDomStorageItemAdded
          .add(new DOMStorageDomStorageItemAddedEvent(params.asMap));
    });

    rpc.registerMethod('DOMStorage.domStorageItemRemoved',
        (json_rpc_2.Parameters params) {
      _onDomStorageItemRemoved
          .add(new DOMStorageDomStorageItemRemovedEvent(params.asMap));
    });

    rpc.registerMethod('DOMStorage.domStorageItemUpdated',
        (json_rpc_2.Parameters params) {
      _onDomStorageItemUpdated
          .add(new DOMStorageDomStorageItemUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('DOMStorage.domStorageItemsCleared',
        (json_rpc_2.Parameters params) {
      _onDomStorageItemsCleared
          .add(new DOMStorageDomStorageItemsClearedEvent(params.asMap));
    });
  }

  void _close() {
    _onDomStorageItemAdded.close();
    _onDomStorageItemRemoved.close();
    _onDomStorageItemUpdated.close();
    _onDomStorageItemsCleared.close();
  }
}

class DatabaseExecuteSQLResponse {
  DatabaseExecuteSQLResponse(Map map) {
    columnNames = map['columnNames'];
    values = map['values'];
    sqlError = map.containsKey('sqlError') ? new Error(map['sqlError']) : null;
  }

  List columnNames;

  List values;

  Error sqlError;
}

class DatabaseGetDatabaseTableNamesResponse {
  DatabaseGetDatabaseTableNamesResponse(Map map) {
    tableNames = map['tableNames'];
  }

  List tableNames;
}

/// Fired on `Database.addDatabase`.
class DatabaseAddDatabaseEvent {
  DatabaseAddDatabaseEvent(Map map) {
    database =
        map.containsKey('database') ? new Database(map['database']) : null;
  }

/**  */
  Database database;
}

class DevToolsDatabase {
  DevToolsDatabase(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<DatabaseAddDatabaseEvent> _onAddDatabase =
      new dart_async.StreamController.broadcast();

/** Disables database tracking, prevents database events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Database.disable', params);
  }

/** Enables database tracking, database events will now be delivered to the client. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Database.enable', params);
  }

/**  */
/** databaseId:[String]  */
/** query:[String]  */
  dart_async.Future<DatabaseExecuteSQLResponse> executeSQL(
      {String databaseId, String query}) {
    var params = {};
    if (databaseId != null) params['databaseId'] = databaseId;

    if (query != null) params['query'] = query;

    return _devtools.rpc
        .sendRequest('Database.executeSQL', params)
        .then((response) => new DatabaseExecuteSQLResponse(response));
  }

/**  */
/** databaseId:[String]  */
  dart_async.Future<DatabaseGetDatabaseTableNamesResponse>
      getDatabaseTableNames({String databaseId}) {
    var params = {};
    if (databaseId != null) params['databaseId'] = databaseId;

    return _devtools.rpc
        .sendRequest('Database.getDatabaseTableNames', params)
        .then(
            (response) => new DatabaseGetDatabaseTableNamesResponse(response));
  }

/** Broadcast stream:  */
  dart_async.Stream<DatabaseAddDatabaseEvent> get onAddDatabase =>
      _onAddDatabase.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Database.addDatabase', (json_rpc_2.Parameters params) {
      _onAddDatabase.add(new DatabaseAddDatabaseEvent(params.asMap));
    });
  }

  void _close() {
    _onAddDatabase.close();
  }
}

class DevToolsDeviceOrientation {
  DevToolsDeviceOrientation(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    var params = {};
    return _devtools.rpc.sendRequest(
        'DeviceOrientation.clearDeviceOrientationOverride', params);
  }

/** Overrides the Device Orientation. */
/** alpha:[num] Mock alpha */
/** beta:[num] Mock beta */
/** gamma:[num] Mock gamma */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    var params = {};
    if (alpha != null) params['alpha'] = alpha;

    if (beta != null) params['beta'] = beta;

    if (gamma != null) params['gamma'] = gamma;

    return _devtools.rpc
        .sendRequest('DeviceOrientation.setDeviceOrientationOverride', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class EmulationCanEmulateResponse {
  EmulationCanEmulateResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class EmulationSetVirtualTimePolicyResponse {
  EmulationSetVirtualTimePolicyResponse(Map map) {
    virtualTimeBase = map['virtualTimeBase'];
  }

  num virtualTimeBase;
}

/// Fired on `Emulation.virtualTimeAdvanced`.
class EmulationVirtualTimeAdvancedEvent {
  EmulationVirtualTimeAdvancedEvent(Map map) {
    virtualTimeElapsed = map['virtualTimeElapsed'];
  }

/** The amount of virtual time that has elapsed in milliseconds since virtual time was first
enabled. */
  num virtualTimeElapsed;
}

/// Fired on `Emulation.virtualTimeBudgetExpired`.
class EmulationVirtualTimeBudgetExpiredEvent {
  EmulationVirtualTimeBudgetExpiredEvent(Map map) {}
}

/// Fired on `Emulation.virtualTimePaused`.
class EmulationVirtualTimePausedEvent {
  EmulationVirtualTimePausedEvent(Map map) {
    virtualTimeElapsed = map['virtualTimeElapsed'];
  }

/** The amount of virtual time that has elapsed in milliseconds since virtual time was first
enabled. */
  num virtualTimeElapsed;
}

class DevToolsEmulation {
  DevToolsEmulation(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<EmulationVirtualTimeAdvancedEvent>
      _onVirtualTimeAdvanced = new dart_async.StreamController.broadcast();

  dart_async.StreamController<EmulationVirtualTimeBudgetExpiredEvent>
      _onVirtualTimeBudgetExpired = new dart_async.StreamController.broadcast();

  dart_async.StreamController<EmulationVirtualTimePausedEvent>
      _onVirtualTimePaused = new dart_async.StreamController.broadcast();

/** Tells whether emulation is supported. */
  dart_async.Future<EmulationCanEmulateResponse> canEmulate() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.canEmulate', params)
        .then((response) => new EmulationCanEmulateResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.clearDeviceMetricsOverride', params);
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Emulation.clearGeolocationOverride', params);
  }

/** Requests that page scale factor is reset to initial values. */
  dart_async.Future resetPageScaleFactor() {
    var params = {};
    return _devtools.rpc.sendRequest('Emulation.resetPageScaleFactor', params);
  }

/** Enables CPU throttling to emulate slow CPUs. */
/** rate:[num] Throttling rate as a slowdown factor (1 is no throttle, 2 is 2x slowdown, etc). */
  dart_async.Future setCPUThrottlingRate({num rate}) {
    var params = {};
    if (rate != null) params['rate'] = rate;

    return _devtools.rpc.sendRequest('Emulation.setCPUThrottlingRate', params);
  }

/** Sets or clears an override of the default background color of the frame. This override is used
if the content does not specify one. */
/** color:[RGBA] RGBA of the default background color. If not specified, any existing override will be
cleared. */
  dart_async.Future setDefaultBackgroundColorOverride({RGBA color}) {
    var params = {};
    if (color != null) params['color'] = color;

    return _devtools.rpc
        .sendRequest('Emulation.setDefaultBackgroundColorOverride', params);
  }

/** Overrides the values of device screen dimensions (window.screen.width, window.screen.height,
window.innerWidth, window.innerHeight, and "device-width"/"device-height"-related CSS media
query results). */
/** width:[int] Overriding width value in pixels (minimum 0, maximum 10000000). 0 disables the override. */
/** height:[int] Overriding height value in pixels (minimum 0, maximum 10000000). 0 disables the override. */
/** deviceScaleFactor:[num] Overriding device scale factor value. 0 disables the override. */
/** mobile:[bool] Whether to emulate mobile device. This includes viewport meta tag, overlay scrollbars, text
autosizing and more. */
/** scale:[num] Scale to apply to resulting view image. */
/** screenWidth:[int] Overriding screen width value in pixels (minimum 0, maximum 10000000). */
/** screenHeight:[int] Overriding screen height value in pixels (minimum 0, maximum 10000000). */
/** positionX:[int] Overriding view X position on screen in pixels (minimum 0, maximum 10000000). */
/** positionY:[int] Overriding view Y position on screen in pixels (minimum 0, maximum 10000000). */
/** dontSetVisibleSize:[bool] Do not set visible view size, rely upon explicit setVisibleSize call. */
/** screenOrientation:[ScreenOrientation] Screen orientation override. */
/** viewport:[Viewport] If set, the visible area of the page will be overridden to this viewport. This viewport
change is not observed by the page, e.g. viewport-relative elements do not change positions. */
  dart_async.Future setDeviceMetricsOverride(
      {int width,
      int height,
      num deviceScaleFactor,
      bool mobile,
      num scale,
      int screenWidth,
      int screenHeight,
      int positionX,
      int positionY,
      bool dontSetVisibleSize,
      ScreenOrientation screenOrientation,
      Viewport viewport}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (deviceScaleFactor != null)
      params['deviceScaleFactor'] = deviceScaleFactor;

    if (mobile != null) params['mobile'] = mobile;

    if (scale != null) params['scale'] = scale;

    if (screenWidth != null) params['screenWidth'] = screenWidth;

    if (screenHeight != null) params['screenHeight'] = screenHeight;

    if (positionX != null) params['positionX'] = positionX;

    if (positionY != null) params['positionY'] = positionY;

    if (dontSetVisibleSize != null)
      params['dontSetVisibleSize'] = dontSetVisibleSize;

    if (screenOrientation != null)
      params['screenOrientation'] = screenOrientation;

    if (viewport != null) params['viewport'] = viewport;

    return _devtools.rpc
        .sendRequest('Emulation.setDeviceMetricsOverride', params);
  }

/**  */
/** enabled:[bool] Whether touch emulation based on mouse input should be enabled. */
/** configuration:[String] Touch/gesture events configuration. Default: current platform. */
  dart_async.Future setEmitTouchEventsForMouse(
      {bool enabled, String configuration}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (configuration != null) params['configuration'] = configuration;

    return _devtools.rpc
        .sendRequest('Emulation.setEmitTouchEventsForMouse', params);
  }

/** Emulates the given media for CSS media queries. */
/** media:[String] Media type to emulate. Empty string disables the override. */
  dart_async.Future setEmulatedMedia({String media}) {
    var params = {};
    if (media != null) params['media'] = media;

    return _devtools.rpc.sendRequest('Emulation.setEmulatedMedia', params);
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
/** latitude:[num] Mock latitude */
/** longitude:[num] Mock longitude */
/** accuracy:[num] Mock accuracy */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    var params = {};
    if (latitude != null) params['latitude'] = latitude;

    if (longitude != null) params['longitude'] = longitude;

    if (accuracy != null) params['accuracy'] = accuracy;

    return _devtools.rpc
        .sendRequest('Emulation.setGeolocationOverride', params);
  }

/** Overrides value returned by the javascript navigator object. */
/** platform:[String] The platform navigator.platform should return. */
  dart_async.Future setNavigatorOverrides({String platform}) {
    var params = {};
    if (platform != null) params['platform'] = platform;

    return _devtools.rpc.sendRequest('Emulation.setNavigatorOverrides', params);
  }

/** Sets a specified page scale factor. */
/** pageScaleFactor:[num] Page scale factor. */
  dart_async.Future setPageScaleFactor({num pageScaleFactor}) {
    var params = {};
    if (pageScaleFactor != null) params['pageScaleFactor'] = pageScaleFactor;

    return _devtools.rpc.sendRequest('Emulation.setPageScaleFactor', params);
  }

/** Switches script execution in the page. */
/** value:[bool] Whether script execution should be disabled in the page. */
  dart_async.Future setScriptExecutionDisabled({bool value}) {
    var params = {};
    if (value != null) params['value'] = value;

    return _devtools.rpc
        .sendRequest('Emulation.setScriptExecutionDisabled', params);
  }

/** Enables touch on platforms which do not support them. */
/** enabled:[bool] Whether the touch event emulation should be enabled. */
/** maxTouchPoints:[int] Maximum touch points supported. Defaults to one. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, int maxTouchPoints}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (maxTouchPoints != null) params['maxTouchPoints'] = maxTouchPoints;

    return _devtools.rpc
        .sendRequest('Emulation.setTouchEmulationEnabled', params);
  }

/** Turns on virtual time for all frames (replacing real-time with a synthetic time source) and sets
the current virtual time policy.  Note this supersedes any previous time budget. */
/** policy:[String]  */
/** budget:[num] If set, after this many virtual milliseconds have elapsed virtual time will be paused and a
virtualTimeBudgetExpired event is sent. */
/** maxVirtualTimeTaskStarvationCount:[int] If set this specifies the maximum number of tasks that can be run before virtual is forced
forwards to prevent deadlock. */
/** waitForNavigation:[bool] If set the virtual time policy change should be deferred until any frame starts navigating.
Note any previous deferred policy change is superseded. */
  dart_async.Future<EmulationSetVirtualTimePolicyResponse> setVirtualTimePolicy(
      {String policy,
      num budget,
      int maxVirtualTimeTaskStarvationCount,
      bool waitForNavigation}) {
    var params = {};
    if (policy != null) params['policy'] = policy;

    if (budget != null) params['budget'] = budget;

    if (maxVirtualTimeTaskStarvationCount != null)
      params['maxVirtualTimeTaskStarvationCount'] =
          maxVirtualTimeTaskStarvationCount;

    if (waitForNavigation != null)
      params['waitForNavigation'] = waitForNavigation;

    return _devtools.rpc
        .sendRequest('Emulation.setVirtualTimePolicy', params)
        .then(
            (response) => new EmulationSetVirtualTimePolicyResponse(response));
  }

/** Resizes the frame/viewport of the page. Note that this does not affect the frame's container
(e.g. browser window). Can be used to produce screenshots of the specified size. Not supported
on Android. */
/** width:[int] Frame width (DIP). */
/** height:[int] Frame height (DIP). */
  dart_async.Future setVisibleSize({int width, int height}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    return _devtools.rpc.sendRequest('Emulation.setVisibleSize', params);
  }

/** Broadcast stream: Notification sent after the virtual time has advanced. */
  dart_async.Stream<EmulationVirtualTimeAdvancedEvent>
      get onVirtualTimeAdvanced => _onVirtualTimeAdvanced.stream;
/** Broadcast stream: Notification sent after the virtual time budget for the current VirtualTimePolicy has run out. */
  dart_async.Stream<EmulationVirtualTimeBudgetExpiredEvent>
      get onVirtualTimeBudgetExpired => _onVirtualTimeBudgetExpired.stream;
/** Broadcast stream: Notification sent after the virtual time has paused. */
  dart_async.Stream<EmulationVirtualTimePausedEvent> get onVirtualTimePaused =>
      _onVirtualTimePaused.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Emulation.virtualTimeAdvanced',
        (json_rpc_2.Parameters params) {
      _onVirtualTimeAdvanced
          .add(new EmulationVirtualTimeAdvancedEvent(params.asMap));
    });

    rpc.registerMethod('Emulation.virtualTimeBudgetExpired',
        (json_rpc_2.Parameters params) {
      _onVirtualTimeBudgetExpired
          .add(new EmulationVirtualTimeBudgetExpiredEvent(params.asMap));
    });

    rpc.registerMethod('Emulation.virtualTimePaused',
        (json_rpc_2.Parameters params) {
      _onVirtualTimePaused
          .add(new EmulationVirtualTimePausedEvent(params.asMap));
    });
  }

  void _close() {
    _onVirtualTimeAdvanced.close();
    _onVirtualTimeBudgetExpired.close();
    _onVirtualTimePaused.close();
  }
}

class HeadlessExperimentalBeginFrameResponse {
  HeadlessExperimentalBeginFrameResponse(Map map) {
    hasDamage = map['hasDamage'];
    mainFrameContentUpdated = map['mainFrameContentUpdated'];
    screenshotData = map['screenshotData'];
  }

  bool hasDamage;

  bool mainFrameContentUpdated;

  String screenshotData;
}

/// Fired on `HeadlessExperimental.mainFrameReadyForScreenshots`.
class HeadlessExperimentalMainFrameReadyForScreenshotsEvent {
  HeadlessExperimentalMainFrameReadyForScreenshotsEvent(Map map) {}
}

/// Fired on `HeadlessExperimental.needsBeginFramesChanged`.
class HeadlessExperimentalNeedsBeginFramesChangedEvent {
  HeadlessExperimentalNeedsBeginFramesChangedEvent(Map map) {
    needsBeginFrames = map['needsBeginFrames'];
  }

/** True if BeginFrames are needed, false otherwise. */
  bool needsBeginFrames;
}

class DevToolsHeadlessExperimental {
  DevToolsHeadlessExperimental(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<
          HeadlessExperimentalMainFrameReadyForScreenshotsEvent>
      _onMainFrameReadyForScreenshots =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<HeadlessExperimentalNeedsBeginFramesChangedEvent>
      _onNeedsBeginFramesChanged = new dart_async.StreamController.broadcast();

/** Sends a BeginFrame to the target and returns when the frame was completed. Optionally captures a
screenshot from the resulting frame. Requires that the target was created with enabled
BeginFrameControl. */
/** frameTime:[num] Timestamp of this BeginFrame (milliseconds since epoch). If not set, the current time will
be used. */
/** deadline:[num] Deadline of this BeginFrame (milliseconds since epoch). If not set, the deadline will be
calculated from the frameTime and interval. */
/** interval:[num] The interval between BeginFrames that is reported to the compositor, in milliseconds.
Defaults to a 60 frames/second interval, i.e. about 16.666 milliseconds. */
/** noDisplayUpdates:[bool] Whether updates should not be committed and drawn onto the display. False by default. If
true, only side effects of the BeginFrame will be run, such as layout and animations, but
any visual updates may not be visible on the display or in screenshots. */
/** screenshot:[ScreenshotParams] If set, a screenshot of the frame will be captured and returned in the response. Otherwise,
no screenshot will be captured. */
  dart_async.Future<HeadlessExperimentalBeginFrameResponse> beginFrame(
      {num frameTime,
      num deadline,
      num interval,
      bool noDisplayUpdates,
      ScreenshotParams screenshot}) {
    var params = {};
    if (frameTime != null) params['frameTime'] = frameTime;

    if (deadline != null) params['deadline'] = deadline;

    if (interval != null) params['interval'] = interval;

    if (noDisplayUpdates != null) params['noDisplayUpdates'] = noDisplayUpdates;

    if (screenshot != null) params['screenshot'] = screenshot;

    return _devtools.rpc
        .sendRequest('HeadlessExperimental.beginFrame', params)
        .then(
            (response) => new HeadlessExperimentalBeginFrameResponse(response));
  }

/** Disables headless events for the target. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeadlessExperimental.disable', params);
  }

/** Enables headless events for the target. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('HeadlessExperimental.enable', params);
  }

/** Broadcast stream: Issued when the main frame has first submitted a frame to the browser. May only be fired while a
BeginFrame is in flight. Before this event, screenshotting requests may fail. */
  dart_async.Stream<HeadlessExperimentalMainFrameReadyForScreenshotsEvent>
      get onMainFrameReadyForScreenshots =>
          _onMainFrameReadyForScreenshots.stream;
/** Broadcast stream: Issued when the target starts or stops needing BeginFrames. */
  dart_async.Stream<HeadlessExperimentalNeedsBeginFramesChangedEvent>
      get onNeedsBeginFramesChanged => _onNeedsBeginFramesChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('HeadlessExperimental.mainFrameReadyForScreenshots',
        (json_rpc_2.Parameters params) {
      _onMainFrameReadyForScreenshots.add(
          new HeadlessExperimentalMainFrameReadyForScreenshotsEvent(
              params.asMap));
    });

    rpc.registerMethod('HeadlessExperimental.needsBeginFramesChanged',
        (json_rpc_2.Parameters params) {
      _onNeedsBeginFramesChanged.add(
          new HeadlessExperimentalNeedsBeginFramesChangedEvent(params.asMap));
    });
  }

  void _close() {
    _onMainFrameReadyForScreenshots.close();
    _onNeedsBeginFramesChanged.close();
  }
}

class IOReadResponse {
  IOReadResponse(Map map) {
    base64Encoded = map['base64Encoded'];
    data = map['data'];
    eof = map['eof'];
  }

  bool base64Encoded;

  String data;

  bool eof;
}

class IOResolveBlobResponse {
  IOResolveBlobResponse(Map map) {
    uuid = map['uuid'];
  }

  String uuid;
}

class DevToolsIO {
  DevToolsIO(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Close the stream, discard any temporary backing storage. */
/** handle:[String] Handle of the stream to close. */
  dart_async.Future close({String handle}) {
    var params = {};
    if (handle != null) params['handle'] = handle;

    return _devtools.rpc.sendRequest('IO.close', params);
  }

/** Read a chunk of the stream */
/** handle:[String] Handle of the stream to read. */
/** offset:[int] Seek to the specified offset before reading (if not specificed, proceed with offset
following the last read). */
/** size:[int] Maximum number of bytes to read (left upon the agent discretion if not specified). */
  dart_async.Future<IOReadResponse> read(
      {String handle, int offset, int size}) {
    var params = {};
    if (handle != null) params['handle'] = handle;

    if (offset != null) params['offset'] = offset;

    if (size != null) params['size'] = size;

    return _devtools.rpc
        .sendRequest('IO.read', params)
        .then((response) => new IOReadResponse(response));
  }

/** Return UUID of Blob object specified by a remote object id. */
/** objectId:[String] Object id of a Blob object wrapper. */
  dart_async.Future<IOResolveBlobResponse> resolveBlob({String objectId}) {
    var params = {};
    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc
        .sendRequest('IO.resolveBlob', params)
        .then((response) => new IOResolveBlobResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class IndexedDBRequestDataResponse {
  IndexedDBRequestDataResponse(Map map) {
    objectStoreDataEntries = map['objectStoreDataEntries'] is Iterable
        ? map['objectStoreDataEntries'].map((m) => new DataEntry(m)).toList()
        : null;
    hasMore = map['hasMore'];
  }

  List<DataEntry> objectStoreDataEntries;

  bool hasMore;
}

class IndexedDBRequestDatabaseResponse {
  IndexedDBRequestDatabaseResponse(Map map) {
    databaseWithObjectStores = map.containsKey('databaseWithObjectStores')
        ? new DatabaseWithObjectStores(map['databaseWithObjectStores'])
        : null;
  }

  DatabaseWithObjectStores databaseWithObjectStores;
}

class IndexedDBRequestDatabaseNamesResponse {
  IndexedDBRequestDatabaseNamesResponse(Map map) {
    databaseNames = map['databaseNames'];
  }

  List databaseNames;
}

class DevToolsIndexedDB {
  DevToolsIndexedDB(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Clears all entries from an object store. */
/** securityOrigin:[String] Security origin. */
/** databaseName:[String] Database name. */
/** objectStoreName:[String] Object store name. */
  dart_async.Future clearObjectStore(
      {String securityOrigin, String databaseName, String objectStoreName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    return _devtools.rpc.sendRequest('IndexedDB.clearObjectStore', params);
  }

/** Deletes a database. */
/** securityOrigin:[String] Security origin. */
/** databaseName:[String] Database name. */
  dart_async.Future deleteDatabase(
      {String securityOrigin, String databaseName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    return _devtools.rpc.sendRequest('IndexedDB.deleteDatabase', params);
  }

/** Delete a range of entries from an object store */
/** securityOrigin:[String]  */
/** databaseName:[String]  */
/** objectStoreName:[String]  */
/** keyRange:[KeyRange] Range of entry keys to delete */
  dart_async.Future deleteObjectStoreEntries(
      {String securityOrigin,
      String databaseName,
      String objectStoreName,
      KeyRange keyRange}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    if (keyRange != null) params['keyRange'] = keyRange;

    return _devtools.rpc
        .sendRequest('IndexedDB.deleteObjectStoreEntries', params);
  }

/** Disables events from backend. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('IndexedDB.disable', params);
  }

/** Enables events from backend. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('IndexedDB.enable', params);
  }

/** Requests data from object store or index. */
/** securityOrigin:[String] Security origin. */
/** databaseName:[String] Database name. */
/** objectStoreName:[String] Object store name. */
/** indexName:[String] Index name, empty string for object store data requests. */
/** skipCount:[int] Number of records to skip. */
/** pageSize:[int] Number of records to fetch. */
/** keyRange:[KeyRange] Key range. */
  dart_async.Future<IndexedDBRequestDataResponse> requestData(
      {String securityOrigin,
      String databaseName,
      String objectStoreName,
      String indexName,
      int skipCount,
      int pageSize,
      KeyRange keyRange}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    if (objectStoreName != null) params['objectStoreName'] = objectStoreName;

    if (indexName != null) params['indexName'] = indexName;

    if (skipCount != null) params['skipCount'] = skipCount;

    if (pageSize != null) params['pageSize'] = pageSize;

    if (keyRange != null) params['keyRange'] = keyRange;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestData', params)
        .then((response) => new IndexedDBRequestDataResponse(response));
  }

/** Requests database with given name in given frame. */
/** securityOrigin:[String] Security origin. */
/** databaseName:[String] Database name. */
  dart_async.Future<IndexedDBRequestDatabaseResponse> requestDatabase(
      {String securityOrigin, String databaseName}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    if (databaseName != null) params['databaseName'] = databaseName;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestDatabase', params)
        .then((response) => new IndexedDBRequestDatabaseResponse(response));
  }

/** Requests database names for given security origin. */
/** securityOrigin:[String] Security origin. */
  dart_async.Future<IndexedDBRequestDatabaseNamesResponse> requestDatabaseNames(
      {String securityOrigin}) {
    var params = {};
    if (securityOrigin != null) params['securityOrigin'] = securityOrigin;

    return _devtools.rpc
        .sendRequest('IndexedDB.requestDatabaseNames', params)
        .then(
            (response) => new IndexedDBRequestDatabaseNamesResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class DevToolsInput {
  DevToolsInput(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Dispatches a key event to the page. */
/** type:[String] Type of the key event. */
/** modifiers:[int] Bit field representing pressed modifier keys. Alt=1, Ctrl=2, Meta/Command=4, Shift=8
(default: 0). */
/** timestamp:[num] Time at which the event occurred. */
/** text:[String] Text as generated by processing a virtual key code with a keyboard layout. Not needed for
for `keyUp` and `rawKeyDown` events (default: "") */
/** unmodifiedText:[String] Text that would have been generated by the keyboard if no modifiers were pressed (except for
shift). Useful for shortcut (accelerator) key handling (default: ""). */
/** keyIdentifier:[String] Unique key identifier (e.g., 'U+0041') (default: ""). */
/** code:[String] Unique DOM defined string value for each physical key (e.g., 'KeyA') (default: ""). */
/** key:[String] Unique DOM defined string value describing the meaning of the key in the context of active
modifiers, keyboard layout, etc (e.g., 'AltGr') (default: ""). */
/** windowsVirtualKeyCode:[int] Windows virtual key code (default: 0). */
/** nativeVirtualKeyCode:[int] Native virtual key code (default: 0). */
/** autoRepeat:[bool] Whether the event was generated from auto repeat (default: false). */
/** isKeypad:[bool] Whether the event was generated from the keypad (default: false). */
/** isSystemKey:[bool] Whether the event was a system key event (default: false). */
/** location:[int] Whether the event was from the left or right side of the keyboard. 1=Left, 2=Right (default:
0). */
  dart_async.Future dispatchKeyEvent(
      {String type,
      int modifiers,
      num timestamp,
      String text,
      String unmodifiedText,
      String keyIdentifier,
      String code,
      String key,
      int windowsVirtualKeyCode,
      int nativeVirtualKeyCode,
      bool autoRepeat,
      bool isKeypad,
      bool isSystemKey,
      int location}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (text != null) params['text'] = text;

    if (unmodifiedText != null) params['unmodifiedText'] = unmodifiedText;

    if (keyIdentifier != null) params['keyIdentifier'] = keyIdentifier;

    if (code != null) params['code'] = code;

    if (key != null) params['key'] = key;

    if (windowsVirtualKeyCode != null)
      params['windowsVirtualKeyCode'] = windowsVirtualKeyCode;

    if (nativeVirtualKeyCode != null)
      params['nativeVirtualKeyCode'] = nativeVirtualKeyCode;

    if (autoRepeat != null) params['autoRepeat'] = autoRepeat;

    if (isKeypad != null) params['isKeypad'] = isKeypad;

    if (isSystemKey != null) params['isSystemKey'] = isSystemKey;

    if (location != null) params['location'] = location;

    return _devtools.rpc.sendRequest('Input.dispatchKeyEvent', params);
  }

/** Dispatches a mouse event to the page. */
/** type:[String] Type of the mouse event. */
/** x:[num] X coordinate of the event relative to the main frame's viewport in CSS pixels. */
/** y:[num] Y coordinate of the event relative to the main frame's viewport in CSS pixels. 0 refers to
the top of the viewport and Y increases as it proceeds towards the bottom of the viewport. */
/** modifiers:[int] Bit field representing pressed modifier keys. Alt=1, Ctrl=2, Meta/Command=4, Shift=8
(default: 0). */
/** timestamp:[num] Time at which the event occurred. */
/** button:[String] Mouse button (default: "none"). */
/** clickCount:[int] Number of times the mouse button was clicked (default: 0). */
/** deltaX:[num] X delta in CSS pixels for mouse wheel event (default: 0). */
/** deltaY:[num] Y delta in CSS pixels for mouse wheel event (default: 0). */
  dart_async.Future dispatchMouseEvent(
      {String type,
      num x,
      num y,
      int modifiers,
      num timestamp,
      String button,
      int clickCount,
      num deltaX,
      num deltaY}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (button != null) params['button'] = button;

    if (clickCount != null) params['clickCount'] = clickCount;

    if (deltaX != null) params['deltaX'] = deltaX;

    if (deltaY != null) params['deltaY'] = deltaY;

    return _devtools.rpc.sendRequest('Input.dispatchMouseEvent', params);
  }

/** Dispatches a touch event to the page. */
/** type:[String] Type of the touch event. TouchEnd and TouchCancel must not contain any touch points, while
TouchStart and TouchMove must contains at least one. */
/** touchPoints:[List] Active touch points on the touch device. One event per any changed point (compared to
previous touch event in a sequence) is generated, emulating pressing/moving/releasing points
one by one. */
/** modifiers:[int] Bit field representing pressed modifier keys. Alt=1, Ctrl=2, Meta/Command=4, Shift=8
(default: 0). */
/** timestamp:[num] Time at which the event occurred. */
  dart_async.Future dispatchTouchEvent(
      {String type,
      List<TouchPoint> touchPoints,
      int modifiers,
      num timestamp}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (touchPoints != null) params['touchPoints'] = touchPoints;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (timestamp != null) params['timestamp'] = timestamp;

    return _devtools.rpc.sendRequest('Input.dispatchTouchEvent', params);
  }

/** Emulates touch event from the mouse event parameters. */
/** type:[String] Type of the mouse event. */
/** x:[int] X coordinate of the mouse pointer in DIP. */
/** y:[int] Y coordinate of the mouse pointer in DIP. */
/** button:[String] Mouse button. */
/** timestamp:[num] Time at which the event occurred (default: current time). */
/** deltaX:[num] X delta in DIP for mouse wheel event (default: 0). */
/** deltaY:[num] Y delta in DIP for mouse wheel event (default: 0). */
/** modifiers:[int] Bit field representing pressed modifier keys. Alt=1, Ctrl=2, Meta/Command=4, Shift=8
(default: 0). */
/** clickCount:[int] Number of times the mouse button was clicked (default: 0). */
  dart_async.Future emulateTouchFromMouseEvent(
      {String type,
      int x,
      int y,
      String button,
      num timestamp,
      num deltaX,
      num deltaY,
      int modifiers,
      int clickCount}) {
    var params = {};
    if (type != null) params['type'] = type;

    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (button != null) params['button'] = button;

    if (timestamp != null) params['timestamp'] = timestamp;

    if (deltaX != null) params['deltaX'] = deltaX;

    if (deltaY != null) params['deltaY'] = deltaY;

    if (modifiers != null) params['modifiers'] = modifiers;

    if (clickCount != null) params['clickCount'] = clickCount;

    return _devtools.rpc
        .sendRequest('Input.emulateTouchFromMouseEvent', params);
  }

/** Ignores input events (useful while auditing page). */
/** ignore:[bool] Ignores input events processing when set to true. */
  dart_async.Future setIgnoreInputEvents({bool ignore}) {
    var params = {};
    if (ignore != null) params['ignore'] = ignore;

    return _devtools.rpc.sendRequest('Input.setIgnoreInputEvents', params);
  }

/** Synthesizes a pinch gesture over a time period by issuing appropriate touch events. */
/** x:[num] X coordinate of the start of the gesture in CSS pixels. */
/** y:[num] Y coordinate of the start of the gesture in CSS pixels. */
/** scaleFactor:[num] Relative scale factor after zooming (>1.0 zooms in, <1.0 zooms out). */
/** relativeSpeed:[int] Relative pointer speed in pixels per second (default: 800). */
/** gestureSourceType:[String] Which type of input events to be generated (default: 'default', which queries the platform
for the preferred input type). */
  dart_async.Future synthesizePinchGesture(
      {num x,
      num y,
      num scaleFactor,
      int relativeSpeed,
      String gestureSourceType}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (scaleFactor != null) params['scaleFactor'] = scaleFactor;

    if (relativeSpeed != null) params['relativeSpeed'] = relativeSpeed;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    return _devtools.rpc.sendRequest('Input.synthesizePinchGesture', params);
  }

/** Synthesizes a scroll gesture over a time period by issuing appropriate touch events. */
/** x:[num] X coordinate of the start of the gesture in CSS pixels. */
/** y:[num] Y coordinate of the start of the gesture in CSS pixels. */
/** xDistance:[num] The distance to scroll along the X axis (positive to scroll left). */
/** yDistance:[num] The distance to scroll along the Y axis (positive to scroll up). */
/** xOverscroll:[num] The number of additional pixels to scroll back along the X axis, in addition to the given
distance. */
/** yOverscroll:[num] The number of additional pixels to scroll back along the Y axis, in addition to the given
distance. */
/** preventFling:[bool] Prevent fling (default: true). */
/** speed:[int] Swipe speed in pixels per second (default: 800). */
/** gestureSourceType:[String] Which type of input events to be generated (default: 'default', which queries the platform
for the preferred input type). */
/** repeatCount:[int] The number of times to repeat the gesture (default: 0). */
/** repeatDelayMs:[int] The number of milliseconds delay between each repeat. (default: 250). */
/** interactionMarkerName:[String] The name of the interaction markers to generate, if not empty (default: ""). */
  dart_async.Future synthesizeScrollGesture(
      {num x,
      num y,
      num xDistance,
      num yDistance,
      num xOverscroll,
      num yOverscroll,
      bool preventFling,
      int speed,
      String gestureSourceType,
      int repeatCount,
      int repeatDelayMs,
      String interactionMarkerName}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (xDistance != null) params['xDistance'] = xDistance;

    if (yDistance != null) params['yDistance'] = yDistance;

    if (xOverscroll != null) params['xOverscroll'] = xOverscroll;

    if (yOverscroll != null) params['yOverscroll'] = yOverscroll;

    if (preventFling != null) params['preventFling'] = preventFling;

    if (speed != null) params['speed'] = speed;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    if (repeatCount != null) params['repeatCount'] = repeatCount;

    if (repeatDelayMs != null) params['repeatDelayMs'] = repeatDelayMs;

    if (interactionMarkerName != null)
      params['interactionMarkerName'] = interactionMarkerName;

    return _devtools.rpc.sendRequest('Input.synthesizeScrollGesture', params);
  }

/** Synthesizes a tap gesture over a time period by issuing appropriate touch events. */
/** x:[num] X coordinate of the start of the gesture in CSS pixels. */
/** y:[num] Y coordinate of the start of the gesture in CSS pixels. */
/** duration:[int] Duration between touchdown and touchup events in ms (default: 50). */
/** tapCount:[int] Number of times to perform the tap (e.g. 2 for double tap, default: 1). */
/** gestureSourceType:[String] Which type of input events to be generated (default: 'default', which queries the platform
for the preferred input type). */
  dart_async.Future synthesizeTapGesture(
      {num x, num y, int duration, int tapCount, String gestureSourceType}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (duration != null) params['duration'] = duration;

    if (tapCount != null) params['tapCount'] = tapCount;

    if (gestureSourceType != null)
      params['gestureSourceType'] = gestureSourceType;

    return _devtools.rpc.sendRequest('Input.synthesizeTapGesture', params);
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

/// Fired on `Inspector.detached`.
class InspectorDetachedEvent {
  InspectorDetachedEvent(Map map) {
    reason = map['reason'];
  }

/** The reason why connection has been terminated. */
  String reason;
}

/// Fired on `Inspector.targetCrashed`.
class InspectorTargetCrashedEvent {
  InspectorTargetCrashedEvent(Map map) {}
}

/// Fired on `Inspector.targetReloadedAfterCrash`.
class InspectorTargetReloadedAfterCrashEvent {
  InspectorTargetReloadedAfterCrashEvent(Map map) {}
}

class DevToolsInspector {
  DevToolsInspector(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<InspectorDetachedEvent> _onDetached =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<InspectorTargetCrashedEvent> _onTargetCrashed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<InspectorTargetReloadedAfterCrashEvent>
      _onTargetReloadedAfterCrash = new dart_async.StreamController.broadcast();

/** Disables inspector domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Inspector.disable', params);
  }

/** Enables inspector domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Inspector.enable', params);
  }

/** Broadcast stream: Fired when remote debugging connection is about to be terminated. Contains detach reason. */
  dart_async.Stream<InspectorDetachedEvent> get onDetached =>
      _onDetached.stream;
/** Broadcast stream: Fired when debugging target has crashed */
  dart_async.Stream<InspectorTargetCrashedEvent> get onTargetCrashed =>
      _onTargetCrashed.stream;
/** Broadcast stream: Fired when debugging target has reloaded after crash */
  dart_async.Stream<InspectorTargetReloadedAfterCrashEvent>
      get onTargetReloadedAfterCrash => _onTargetReloadedAfterCrash.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Inspector.detached', (json_rpc_2.Parameters params) {
      _onDetached.add(new InspectorDetachedEvent(params.asMap));
    });

    rpc.registerMethod('Inspector.targetCrashed',
        (json_rpc_2.Parameters params) {
      _onTargetCrashed.add(new InspectorTargetCrashedEvent(params.asMap));
    });

    rpc.registerMethod('Inspector.targetReloadedAfterCrash',
        (json_rpc_2.Parameters params) {
      _onTargetReloadedAfterCrash
          .add(new InspectorTargetReloadedAfterCrashEvent(params.asMap));
    });
  }

  void _close() {
    _onDetached.close();
    _onTargetCrashed.close();
    _onTargetReloadedAfterCrash.close();
  }
}

class LayerTreeCompositingReasonsResponse {
  LayerTreeCompositingReasonsResponse(Map map) {
    compositingReasons = map['compositingReasons'];
  }

  List compositingReasons;
}

class LayerTreeLoadSnapshotResponse {
  LayerTreeLoadSnapshotResponse(Map map) {
    snapshotId = map['snapshotId'];
  }

  String snapshotId;
}

class LayerTreeMakeSnapshotResponse {
  LayerTreeMakeSnapshotResponse(Map map) {
    snapshotId = map['snapshotId'];
  }

  String snapshotId;
}

class LayerTreeProfileSnapshotResponse {
  LayerTreeProfileSnapshotResponse(Map map) {
    timings = map['timings'];
  }

  List<List> timings;
}

class LayerTreeReplaySnapshotResponse {
  LayerTreeReplaySnapshotResponse(Map map) {
    dataURL = map['dataURL'];
  }

  String dataURL;
}

class LayerTreeSnapshotCommandLogResponse {
  LayerTreeSnapshotCommandLogResponse(Map map) {
    commandLog = map['commandLog'];
  }

  List commandLog;
}

/// Fired on `LayerTree.layerPainted`.
class LayerTreeLayerPaintedEvent {
  LayerTreeLayerPaintedEvent(Map map) {
    layerId = map['layerId'];
    clip = map.containsKey('clip') ? new Rect(map['clip']) : null;
  }

/** The id of the painted layer. */
  String layerId;

/** Clip rectangle. */
  Rect clip;
}

/// Fired on `LayerTree.layerTreeDidChange`.
class LayerTreeLayerTreeDidChangeEvent {
  LayerTreeLayerTreeDidChangeEvent(Map map) {
    layers = map['layers'] is Iterable
        ? map['layers'].map((m) => new Layer(m)).toList()
        : null;
  }

/** Layer tree, absent if not in the comspositing mode. */
  List<Layer> layers;
}

class DevToolsLayerTree {
  DevToolsLayerTree(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<LayerTreeLayerPaintedEvent> _onLayerPainted =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<LayerTreeLayerTreeDidChangeEvent>
      _onLayerTreeDidChange = new dart_async.StreamController.broadcast();

/** Provides the reasons why the given layer was composited. */
/** layerId:[String] The id of the layer for which we want to get the reasons it was composited. */
  dart_async.Future<LayerTreeCompositingReasonsResponse> compositingReasons(
      {String layerId}) {
    var params = {};
    if (layerId != null) params['layerId'] = layerId;

    return _devtools.rpc
        .sendRequest('LayerTree.compositingReasons', params)
        .then((response) => new LayerTreeCompositingReasonsResponse(response));
  }

/** Disables compositing tree inspection. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('LayerTree.disable', params);
  }

/** Enables compositing tree inspection. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('LayerTree.enable', params);
  }

/** Returns the snapshot identifier. */
/** tiles:[List] An array of tiles composing the snapshot. */
  dart_async.Future<LayerTreeLoadSnapshotResponse> loadSnapshot(
      {List<PictureTile> tiles}) {
    var params = {};
    if (tiles != null) params['tiles'] = tiles;

    return _devtools.rpc
        .sendRequest('LayerTree.loadSnapshot', params)
        .then((response) => new LayerTreeLoadSnapshotResponse(response));
  }

/** Returns the layer snapshot identifier. */
/** layerId:[String] The id of the layer. */
  dart_async.Future<LayerTreeMakeSnapshotResponse> makeSnapshot(
      {String layerId}) {
    var params = {};
    if (layerId != null) params['layerId'] = layerId;

    return _devtools.rpc
        .sendRequest('LayerTree.makeSnapshot', params)
        .then((response) => new LayerTreeMakeSnapshotResponse(response));
  }

/**  */
/** snapshotId:[String] The id of the layer snapshot. */
/** minRepeatCount:[int] The maximum number of times to replay the snapshot (1, if not specified). */
/** minDuration:[num] The minimum duration (in seconds) to replay the snapshot. */
/** clipRect:[Rect] The clip rectangle to apply when replaying the snapshot. */
  dart_async.Future<LayerTreeProfileSnapshotResponse> profileSnapshot(
      {String snapshotId, int minRepeatCount, num minDuration, Rect clipRect}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    if (minRepeatCount != null) params['minRepeatCount'] = minRepeatCount;

    if (minDuration != null) params['minDuration'] = minDuration;

    if (clipRect != null) params['clipRect'] = clipRect;

    return _devtools.rpc
        .sendRequest('LayerTree.profileSnapshot', params)
        .then((response) => new LayerTreeProfileSnapshotResponse(response));
  }

/** Releases layer snapshot captured by the back-end. */
/** snapshotId:[String] The id of the layer snapshot. */
  dart_async.Future releaseSnapshot({String snapshotId}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    return _devtools.rpc.sendRequest('LayerTree.releaseSnapshot', params);
  }

/** Replays the layer snapshot and returns the resulting bitmap. */
/** snapshotId:[String] The id of the layer snapshot. */
/** fromStep:[int] The first step to replay from (replay from the very start if not specified). */
/** toStep:[int] The last step to replay to (replay till the end if not specified). */
/** scale:[num] The scale to apply while replaying (defaults to 1). */
  dart_async.Future<LayerTreeReplaySnapshotResponse> replaySnapshot(
      {String snapshotId, int fromStep, int toStep, num scale}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    if (fromStep != null) params['fromStep'] = fromStep;

    if (toStep != null) params['toStep'] = toStep;

    if (scale != null) params['scale'] = scale;

    return _devtools.rpc
        .sendRequest('LayerTree.replaySnapshot', params)
        .then((response) => new LayerTreeReplaySnapshotResponse(response));
  }

/** Replays the layer snapshot and returns canvas log. */
/** snapshotId:[String] The id of the layer snapshot. */
  dart_async.Future<LayerTreeSnapshotCommandLogResponse> snapshotCommandLog(
      {String snapshotId}) {
    var params = {};
    if (snapshotId != null) params['snapshotId'] = snapshotId;

    return _devtools.rpc
        .sendRequest('LayerTree.snapshotCommandLog', params)
        .then((response) => new LayerTreeSnapshotCommandLogResponse(response));
  }

/** Broadcast stream:  */
  dart_async.Stream<LayerTreeLayerPaintedEvent> get onLayerPainted =>
      _onLayerPainted.stream;
/** Broadcast stream:  */
  dart_async.Stream<LayerTreeLayerTreeDidChangeEvent>
      get onLayerTreeDidChange => _onLayerTreeDidChange.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('LayerTree.layerPainted',
        (json_rpc_2.Parameters params) {
      _onLayerPainted.add(new LayerTreeLayerPaintedEvent(params.asMap));
    });

    rpc.registerMethod('LayerTree.layerTreeDidChange',
        (json_rpc_2.Parameters params) {
      _onLayerTreeDidChange
          .add(new LayerTreeLayerTreeDidChangeEvent(params.asMap));
    });
  }

  void _close() {
    _onLayerPainted.close();
    _onLayerTreeDidChange.close();
  }
}

/// Fired on `Log.entryAdded`.
class LogEntryAddedEvent {
  LogEntryAddedEvent(Map map) {
    entry = map.containsKey('entry') ? new LogEntry(map['entry']) : null;
  }

/** The entry. */
  LogEntry entry;
}

class DevToolsLog {
  DevToolsLog(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<LogEntryAddedEvent> _onEntryAdded =
      new dart_async.StreamController.broadcast();

/** Clears the log. */
  dart_async.Future clear() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.clear', params);
  }

/** Disables log domain, prevents further log entries from being reported to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.disable', params);
  }

/** Enables log domain, sends the entries collected so far to the client by means of the
`entryAdded` notification. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.enable', params);
  }

/** start violation reporting. */
/** config:[List] Configuration for violations. */
  dart_async.Future startViolationsReport({List<ViolationSetting> config}) {
    var params = {};
    if (config != null) params['config'] = config;

    return _devtools.rpc.sendRequest('Log.startViolationsReport', params);
  }

/** Stop violation reporting. */
  dart_async.Future stopViolationsReport() {
    var params = {};
    return _devtools.rpc.sendRequest('Log.stopViolationsReport', params);
  }

/** Broadcast stream: Issued when new message was logged. */
  dart_async.Stream<LogEntryAddedEvent> get onEntryAdded =>
      _onEntryAdded.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Log.entryAdded', (json_rpc_2.Parameters params) {
      _onEntryAdded.add(new LogEntryAddedEvent(params.asMap));
    });
  }

  void _close() {
    _onEntryAdded.close();
  }
}

class MemoryGetDOMCountersResponse {
  MemoryGetDOMCountersResponse(Map map) {
    documents = map['documents'];
    nodes = map['nodes'];
    jsEventListeners = map['jsEventListeners'];
  }

  int documents;

  int nodes;

  int jsEventListeners;
}

class MemoryGetAllTimeSamplingProfileResponse {
  MemoryGetAllTimeSamplingProfileResponse(Map map) {
    profile =
        map.containsKey('profile') ? new SamplingProfile(map['profile']) : null;
  }

  SamplingProfile profile;
}

class MemoryGetSamplingProfileResponse {
  MemoryGetSamplingProfileResponse(Map map) {
    profile =
        map.containsKey('profile') ? new SamplingProfile(map['profile']) : null;
  }

  SamplingProfile profile;
}

class DevToolsMemory {
  DevToolsMemory(this._devtools);

  final ChromeDevToolsBase _devtools;

/**  */
  dart_async.Future<MemoryGetDOMCountersResponse> getDOMCounters() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getDOMCounters', params)
        .then((response) => new MemoryGetDOMCountersResponse(response));
  }

/**  */
  dart_async.Future prepareForLeakDetection() {
    var params = {};
    return _devtools.rpc.sendRequest('Memory.prepareForLeakDetection', params);
  }

/** Enable/disable suppressing memory pressure notifications in all processes. */
/** suppressed:[bool] If true, memory pressure notifications will be suppressed. */
  dart_async.Future setPressureNotificationsSuppressed({bool suppressed}) {
    var params = {};
    if (suppressed != null) params['suppressed'] = suppressed;

    return _devtools.rpc
        .sendRequest('Memory.setPressureNotificationsSuppressed', params);
  }

/** Simulate a memory pressure notification in all processes. */
/** level:[String] Memory pressure level of the notification. */
  dart_async.Future simulatePressureNotification({String level}) {
    var params = {};
    if (level != null) params['level'] = level;

    return _devtools.rpc
        .sendRequest('Memory.simulatePressureNotification', params);
  }

/** Start collecting native memory profile. */
/** samplingInterval:[int] Average number of bytes between samples. */
/** suppressRandomness:[bool] Do not randomize intervals between samples. */
  dart_async.Future startSampling(
      {int samplingInterval, bool suppressRandomness}) {
    var params = {};
    if (samplingInterval != null) params['samplingInterval'] = samplingInterval;

    if (suppressRandomness != null)
      params['suppressRandomness'] = suppressRandomness;

    return _devtools.rpc.sendRequest('Memory.startSampling', params);
  }

/** Stop collecting native memory profile. */
  dart_async.Future stopSampling() {
    var params = {};
    return _devtools.rpc.sendRequest('Memory.stopSampling', params);
  }

/** Retrieve native memory allocations profile collected since process startup. */
  dart_async.Future<MemoryGetAllTimeSamplingProfileResponse>
      getAllTimeSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getAllTimeSamplingProfile', params)
        .then((response) =>
            new MemoryGetAllTimeSamplingProfileResponse(response));
  }

/** Retrieve native memory allocations profile collected since last
`startSampling` call. */
  dart_async.Future<MemoryGetSamplingProfileResponse> getSamplingProfile() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Memory.getSamplingProfile', params)
        .then((response) => new MemoryGetSamplingProfileResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class NetworkCanClearBrowserCacheResponse {
  NetworkCanClearBrowserCacheResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkCanClearBrowserCookiesResponse {
  NetworkCanClearBrowserCookiesResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkCanEmulateNetworkConditionsResponse {
  NetworkCanEmulateNetworkConditionsResponse(Map map) {
    result = map['result'];
  }

  bool result;
}

class NetworkGetAllCookiesResponse {
  NetworkGetAllCookiesResponse(Map map) {
    cookies = map['cookies'] is Iterable
        ? map['cookies'].map((m) => new Cookie(m)).toList()
        : null;
  }

  List<Cookie> cookies;
}

class NetworkGetCertificateResponse {
  NetworkGetCertificateResponse(Map map) {
    tableNames = map['tableNames'];
  }

  List tableNames;
}

class NetworkGetCookiesResponse {
  NetworkGetCookiesResponse(Map map) {
    cookies = map['cookies'] is Iterable
        ? map['cookies'].map((m) => new Cookie(m)).toList()
        : null;
  }

  List<Cookie> cookies;
}

class NetworkGetResponseBodyResponse {
  NetworkGetResponseBodyResponse(Map map) {
    body = map['body'];
    base64Encoded = map['base64Encoded'];
  }

  String body;

  bool base64Encoded;
}

class NetworkGetRequestPostDataResponse {
  NetworkGetRequestPostDataResponse(Map map) {
    postData = map['postData'];
  }

  String postData;
}

class NetworkGetResponseBodyForInterceptionResponse {
  NetworkGetResponseBodyForInterceptionResponse(Map map) {
    body = map['body'];
    base64Encoded = map['base64Encoded'];
  }

  String body;

  bool base64Encoded;
}

class NetworkSearchInResponseBodyResponse {
  NetworkSearchInResponseBodyResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new SearchMatch(m)).toList()
        : null;
  }

  List<SearchMatch> result;
}

class NetworkSetCookieResponse {
  NetworkSetCookieResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

/// Fired on `Network.dataReceived`.
class NetworkDataReceivedEvent {
  NetworkDataReceivedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    dataLength = map['dataLength'];
    encodedDataLength = map['encodedDataLength'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** Data chunk length. */
  int dataLength;

/** Actual bytes received (might be less than dataLength for compressed encodings). */
  int encodedDataLength;
}

/// Fired on `Network.eventSourceMessageReceived`.
class NetworkEventSourceMessageReceivedEvent {
  NetworkEventSourceMessageReceivedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    eventName = map['eventName'];
    eventId = map['eventId'];
    data = map['data'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** Message type. */
  String eventName;

/** Message identifier. */
  String eventId;

/** Message content. */
  String data;
}

/// Fired on `Network.loadingFailed`.
class NetworkLoadingFailedEvent {
  NetworkLoadingFailedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    type = map['type'];
    errorText = map['errorText'];
    canceled = map['canceled'];
    blockedReason = map['blockedReason'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** Resource type. */
  String type;

/** User friendly error message. */
  String errorText;

/** True if loading was canceled. */
  bool canceled;

/** The reason why loading was blocked, if any. */
  String blockedReason;
}

/// Fired on `Network.loadingFinished`.
class NetworkLoadingFinishedEvent {
  NetworkLoadingFinishedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    encodedDataLength = map['encodedDataLength'];
    blockedCrossSiteDocument = map['blockedCrossSiteDocument'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** Total number of bytes received for this request. */
  num encodedDataLength;

/** Set when response was blocked due to being cross-site document response. */
  bool blockedCrossSiteDocument;
}

/// Fired on `Network.requestIntercepted`.
class NetworkRequestInterceptedEvent {
  NetworkRequestInterceptedEvent(Map map) {
    interceptionId = map['interceptionId'];
    request = map.containsKey('request') ? new Request(map['request']) : null;
    frameId = map['frameId'];
    resourceType = map['resourceType'];
    isNavigationRequest = map['isNavigationRequest'];
    redirectUrl = map['redirectUrl'];
    authChallenge = map.containsKey('authChallenge')
        ? new AuthChallenge(map['authChallenge'])
        : null;
    responseErrorReason = map['responseErrorReason'];
    responseStatusCode = map['responseStatusCode'];
    responseHeaders = map.containsKey('responseHeaders')
        ? new Headers(map['responseHeaders'])
        : null;
  }

/** Each request the page makes will have a unique id, however if any redirects are encountered
while processing that fetch, they will be reported with the same id as the original fetch.
Likewise if HTTP authentication is needed then the same fetch id will be used. */
  String interceptionId;

/**  */
  Request request;

/** The id of the frame that initiated the request. */
  String frameId;

/** How the requested resource will be used. */
  String resourceType;

/** Whether this is a navigation request, which can abort the navigation completely. */
  bool isNavigationRequest;

/** Redirect location, only sent if a redirect was intercepted. */
  String redirectUrl;

/** Details of the Authorization Challenge encountered. If this is set then
continueInterceptedRequest must contain an authChallengeResponse. */
  AuthChallenge authChallenge;

/** Response error if intercepted at response stage or if redirect occurred while intercepting
request. */
  String responseErrorReason;

/** Response code if intercepted at response stage or if redirect occurred while intercepting
request or auth retry occurred. */
  int responseStatusCode;

/** Response headers if intercepted at the response stage or if redirect occurred while
intercepting request or auth retry occurred. */
  Headers responseHeaders;
}

/// Fired on `Network.requestServedFromCache`.
class NetworkRequestServedFromCacheEvent {
  NetworkRequestServedFromCacheEvent(Map map) {
    requestId = map['requestId'];
  }

/** Request identifier. */
  String requestId;
}

/// Fired on `Network.requestWillBeSent`.
class NetworkRequestWillBeSentEvent {
  NetworkRequestWillBeSentEvent(Map map) {
    requestId = map['requestId'];
    loaderId = map['loaderId'];
    documentURL = map['documentURL'];
    request = map.containsKey('request') ? new Request(map['request']) : null;
    timestamp = map['timestamp'];
    wallTime = map['wallTime'];
    initiator =
        map.containsKey('initiator') ? new Initiator(map['initiator']) : null;
    redirectResponse = map.containsKey('redirectResponse')
        ? new Response(map['redirectResponse'])
        : null;
    type = map['type'];
    frameId = map['frameId'];
  }

/** Request identifier. */
  String requestId;

/** Loader identifier. Empty string if the request is fetched from worker. */
  String loaderId;

/** URL of the document this request is loaded for. */
  String documentURL;

/** Request data. */
  Request request;

/** Timestamp. */
  num timestamp;

/** Timestamp. */
  num wallTime;

/** Request initiator. */
  Initiator initiator;

/** Redirect response data. */
  Response redirectResponse;

/** Type of this resource. */
  String type;

/** Frame identifier. */
  String frameId;
}

/// Fired on `Network.resourceChangedPriority`.
class NetworkResourceChangedPriorityEvent {
  NetworkResourceChangedPriorityEvent(Map map) {
    requestId = map['requestId'];
    newPriority = map['newPriority'];
    timestamp = map['timestamp'];
  }

/** Request identifier. */
  String requestId;

/** New priority */
  String newPriority;

/** Timestamp. */
  num timestamp;
}

/// Fired on `Network.responseReceived`.
class NetworkResponseReceivedEvent {
  NetworkResponseReceivedEvent(Map map) {
    requestId = map['requestId'];
    loaderId = map['loaderId'];
    timestamp = map['timestamp'];
    type = map['type'];
    response =
        map.containsKey('response') ? new Response(map['response']) : null;
    frameId = map['frameId'];
  }

/** Request identifier. */
  String requestId;

/** Loader identifier. Empty string if the request is fetched from worker. */
  String loaderId;

/** Timestamp. */
  num timestamp;

/** Resource type. */
  String type;

/** Response data. */
  Response response;

/** Frame identifier. */
  String frameId;
}

/// Fired on `Network.webSocketClosed`.
class NetworkWebSocketClosedEvent {
  NetworkWebSocketClosedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;
}

/// Fired on `Network.webSocketCreated`.
class NetworkWebSocketCreatedEvent {
  NetworkWebSocketCreatedEvent(Map map) {
    requestId = map['requestId'];
    url = map['url'];
    initiator =
        map.containsKey('initiator') ? new Initiator(map['initiator']) : null;
  }

/** Request identifier. */
  String requestId;

/** WebSocket request URL. */
  String url;

/** Request initiator. */
  Initiator initiator;
}

/// Fired on `Network.webSocketFrameError`.
class NetworkWebSocketFrameErrorEvent {
  NetworkWebSocketFrameErrorEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    errorMessage = map['errorMessage'];
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** WebSocket frame error message. */
  String errorMessage;
}

/// Fired on `Network.webSocketFrameReceived`.
class NetworkWebSocketFrameReceivedEvent {
  NetworkWebSocketFrameReceivedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    response = map.containsKey('response')
        ? new WebSocketFrame(map['response'])
        : null;
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** WebSocket response data. */
  WebSocketFrame response;
}

/// Fired on `Network.webSocketFrameSent`.
class NetworkWebSocketFrameSentEvent {
  NetworkWebSocketFrameSentEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    response = map.containsKey('response')
        ? new WebSocketFrame(map['response'])
        : null;
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** WebSocket response data. */
  WebSocketFrame response;
}

/// Fired on `Network.webSocketHandshakeResponseReceived`.
class NetworkWebSocketHandshakeResponseReceivedEvent {
  NetworkWebSocketHandshakeResponseReceivedEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    response = map.containsKey('response')
        ? new WebSocketResponse(map['response'])
        : null;
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** WebSocket response data. */
  WebSocketResponse response;
}

/// Fired on `Network.webSocketWillSendHandshakeRequest`.
class NetworkWebSocketWillSendHandshakeRequestEvent {
  NetworkWebSocketWillSendHandshakeRequestEvent(Map map) {
    requestId = map['requestId'];
    timestamp = map['timestamp'];
    wallTime = map['wallTime'];
    request = map.containsKey('request')
        ? new WebSocketRequest(map['request'])
        : null;
  }

/** Request identifier. */
  String requestId;

/** Timestamp. */
  num timestamp;

/** UTC Timestamp. */
  num wallTime;

/** WebSocket request data. */
  WebSocketRequest request;
}

class DevToolsNetwork {
  DevToolsNetwork(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<NetworkDataReceivedEvent> _onDataReceived =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkEventSourceMessageReceivedEvent>
      _onEventSourceMessageReceived =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkLoadingFailedEvent> _onLoadingFailed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkLoadingFinishedEvent> _onLoadingFinished =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkRequestInterceptedEvent>
      _onRequestIntercepted = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkRequestServedFromCacheEvent>
      _onRequestServedFromCache = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkRequestWillBeSentEvent>
      _onRequestWillBeSent = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkResourceChangedPriorityEvent>
      _onResourceChangedPriority = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkResponseReceivedEvent>
      _onResponseReceived = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketClosedEvent> _onWebSocketClosed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketCreatedEvent>
      _onWebSocketCreated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketFrameErrorEvent>
      _onWebSocketFrameError = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketFrameReceivedEvent>
      _onWebSocketFrameReceived = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketFrameSentEvent>
      _onWebSocketFrameSent = new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketHandshakeResponseReceivedEvent>
      _onWebSocketHandshakeResponseReceived =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<NetworkWebSocketWillSendHandshakeRequestEvent>
      _onWebSocketWillSendHandshakeRequest =
      new dart_async.StreamController.broadcast();

/** Tells whether clearing browser cache is supported. */
  dart_async.Future<NetworkCanClearBrowserCacheResponse>
      canClearBrowserCache() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canClearBrowserCache', params)
        .then((response) => new NetworkCanClearBrowserCacheResponse(response));
  }

/** Tells whether clearing browser cookies is supported. */
  dart_async.Future<NetworkCanClearBrowserCookiesResponse>
      canClearBrowserCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canClearBrowserCookies', params)
        .then(
            (response) => new NetworkCanClearBrowserCookiesResponse(response));
  }

/** Tells whether emulation of network conditions is supported. */
  dart_async.Future<NetworkCanEmulateNetworkConditionsResponse>
      canEmulateNetworkConditions() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.canEmulateNetworkConditions', params)
        .then((response) =>
            new NetworkCanEmulateNetworkConditionsResponse(response));
  }

/** Clears browser cache. */
  dart_async.Future clearBrowserCache() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.clearBrowserCache', params);
  }

/** Clears browser cookies. */
  dart_async.Future clearBrowserCookies() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.clearBrowserCookies', params);
  }

/** Response to Network.requestIntercepted which either modifies the request to continue with any
modifications, or blocks it, or completes it with the provided response bytes. If a network
fetch occurs as a result which encounters a redirect an additional Network.requestIntercepted
event will be sent with the same InterceptionId. */
/** interceptionId:[String]  */
/** errorReason:[String] If set this causes the request to fail with the given reason. Passing `Aborted` for requests
marked with `isNavigationRequest` also cancels the navigation. Must not be set in response
to an authChallenge. */
/** rawResponse:[String] If set the requests completes using with the provided base64 encoded raw response, including
HTTP status line and headers etc... Must not be set in response to an authChallenge. */
/** url:[String] If set the request url will be modified in a way that's not observable by page. Must not be
set in response to an authChallenge. */
/** method:[String] If set this allows the request method to be overridden. Must not be set in response to an
authChallenge. */
/** postData:[String] If set this allows postData to be set. Must not be set in response to an authChallenge. */
/** headers:[Headers] If set this allows the request headers to be changed. Must not be set in response to an
authChallenge. */
/** authChallengeResponse:[AuthChallengeResponse] Response to a requestIntercepted with an authChallenge. Must not be set otherwise. */
  dart_async.Future continueInterceptedRequest(
      {String interceptionId,
      String errorReason,
      String rawResponse,
      String url,
      String method,
      String postData,
      Headers headers,
      AuthChallengeResponse authChallengeResponse}) {
    var params = {};
    if (interceptionId != null) params['interceptionId'] = interceptionId;

    if (errorReason != null) params['errorReason'] = errorReason;

    if (rawResponse != null) params['rawResponse'] = rawResponse;

    if (url != null) params['url'] = url;

    if (method != null) params['method'] = method;

    if (postData != null) params['postData'] = postData;

    if (headers != null) params['headers'] = headers;

    if (authChallengeResponse != null)
      params['authChallengeResponse'] = authChallengeResponse;

    return _devtools.rpc
        .sendRequest('Network.continueInterceptedRequest', params);
  }

/** Deletes browser cookies with matching name and url or domain/path pair. */
/** name:[String] Name of the cookies to remove. */
/** url:[String] If specified, deletes all the cookies with the given name where domain and path match
provided URL. */
/** domain:[String] If specified, deletes only cookies with the exact domain. */
/** path:[String] If specified, deletes only cookies with the exact path. */
  dart_async.Future deleteCookies(
      {String name, String url, String domain, String path}) {
    var params = {};
    if (name != null) params['name'] = name;

    if (url != null) params['url'] = url;

    if (domain != null) params['domain'] = domain;

    if (path != null) params['path'] = path;

    return _devtools.rpc.sendRequest('Network.deleteCookies', params);
  }

/** Disables network tracking, prevents network events from being sent to the client. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Network.disable', params);
  }

/** Activates emulation of network conditions. */
/** offline:[bool] True to emulate internet disconnection. */
/** latency:[num] Minimum latency from request sent to response headers received (ms). */
/** downloadThroughput:[num] Maximal aggregated download throughput (bytes/sec). -1 disables download throttling. */
/** uploadThroughput:[num] Maximal aggregated upload throughput (bytes/sec).  -1 disables upload throttling. */
/** connectionType:[String] Connection type if known. */
  dart_async.Future emulateNetworkConditions(
      {bool offline,
      num latency,
      num downloadThroughput,
      num uploadThroughput,
      String connectionType}) {
    var params = {};
    if (offline != null) params['offline'] = offline;

    if (latency != null) params['latency'] = latency;

    if (downloadThroughput != null)
      params['downloadThroughput'] = downloadThroughput;

    if (uploadThroughput != null) params['uploadThroughput'] = uploadThroughput;

    if (connectionType != null) params['connectionType'] = connectionType;

    return _devtools.rpc
        .sendRequest('Network.emulateNetworkConditions', params);
  }

/** Enables network tracking, network events will now be delivered to the client. */
/** maxTotalBufferSize:[int] Buffer size in bytes to use when preserving network payloads (XHRs, etc). */
/** maxResourceBufferSize:[int] Per-resource buffer size in bytes to use when preserving network payloads (XHRs, etc). */
/** maxPostDataSize:[int] Longest post body size (in bytes) that would be included in requestWillBeSent notification */
  dart_async.Future enable(
      {int maxTotalBufferSize,
      int maxResourceBufferSize,
      int maxPostDataSize}) {
    var params = {};
    if (maxTotalBufferSize != null)
      params['maxTotalBufferSize'] = maxTotalBufferSize;

    if (maxResourceBufferSize != null)
      params['maxResourceBufferSize'] = maxResourceBufferSize;

    if (maxPostDataSize != null) params['maxPostDataSize'] = maxPostDataSize;

    return _devtools.rpc.sendRequest('Network.enable', params);
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<NetworkGetAllCookiesResponse> getAllCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Network.getAllCookies', params)
        .then((response) => new NetworkGetAllCookiesResponse(response));
  }

/** Returns the DER-encoded certificate. */
/** origin:[String] Origin to get certificate for. */
  dart_async.Future<NetworkGetCertificateResponse> getCertificate(
      {String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Network.getCertificate', params)
        .then((response) => new NetworkGetCertificateResponse(response));
  }

/** Returns all browser cookies for the current URL. Depending on the backend support, will return
detailed cookie information in the `cookies` field. */
/** urls:[List] The list of URLs for which applicable cookies will be fetched */
  dart_async.Future<NetworkGetCookiesResponse> getCookies({List urls}) {
    var params = {};
    if (urls != null) params['urls'] = urls;

    return _devtools.rpc
        .sendRequest('Network.getCookies', params)
        .then((response) => new NetworkGetCookiesResponse(response));
  }

/** Returns content served for the given request. */
/** requestId:[String] Identifier of the network request to get content for. */
  dart_async.Future<NetworkGetResponseBodyResponse> getResponseBody(
      {String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc
        .sendRequest('Network.getResponseBody', params)
        .then((response) => new NetworkGetResponseBodyResponse(response));
  }

/** Returns post data sent with the request. Returns an error when no data was sent with the request. */
/** requestId:[String] Identifier of the network request to get content for. */
  dart_async.Future<NetworkGetRequestPostDataResponse> getRequestPostData(
      {String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc
        .sendRequest('Network.getRequestPostData', params)
        .then((response) => new NetworkGetRequestPostDataResponse(response));
  }

/** Returns content served for the given currently intercepted request. */
/** interceptionId:[String] Identifier for the intercepted request to get body for. */
  dart_async.Future<NetworkGetResponseBodyForInterceptionResponse>
      getResponseBodyForInterception({String interceptionId}) {
    var params = {};
    if (interceptionId != null) params['interceptionId'] = interceptionId;

    return _devtools.rpc
        .sendRequest('Network.getResponseBodyForInterception', params)
        .then((response) =>
            new NetworkGetResponseBodyForInterceptionResponse(response));
  }

/** This method sends a new XMLHttpRequest which is identical to the original one. The following
parameters should be identical: method, url, async, request body, extra headers, withCredentials
attribute, user, password. */
/** requestId:[String] Identifier of XHR to replay. */
  dart_async.Future replayXHR({String requestId}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    return _devtools.rpc.sendRequest('Network.replayXHR', params);
  }

/** Searches for given string in response content. */
/** requestId:[String] Identifier of the network response to search. */
/** query:[String] String to search for. */
/** caseSensitive:[bool] If true, search is case sensitive. */
/** isRegex:[bool] If true, treats string parameter as regex. */
  dart_async.Future<NetworkSearchInResponseBodyResponse> searchInResponseBody(
      {String requestId, String query, bool caseSensitive, bool isRegex}) {
    var params = {};
    if (requestId != null) params['requestId'] = requestId;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Network.searchInResponseBody', params)
        .then((response) => new NetworkSearchInResponseBodyResponse(response));
  }

/** Blocks URLs from loading. */
/** urls:[List] URL patterns to block. Wildcards ('*') are allowed. */
  dart_async.Future setBlockedURLs({List urls}) {
    var params = {};
    if (urls != null) params['urls'] = urls;

    return _devtools.rpc.sendRequest('Network.setBlockedURLs', params);
  }

/** Toggles ignoring of service worker for each request. */
/** bypass:[bool] Bypass service worker and load from network. */
  dart_async.Future setBypassServiceWorker({bool bypass}) {
    var params = {};
    if (bypass != null) params['bypass'] = bypass;

    return _devtools.rpc.sendRequest('Network.setBypassServiceWorker', params);
  }

/** Toggles ignoring cache for each request. If `true`, cache will not be used. */
/** cacheDisabled:[bool] Cache disabled state. */
  dart_async.Future setCacheDisabled({bool cacheDisabled}) {
    var params = {};
    if (cacheDisabled != null) params['cacheDisabled'] = cacheDisabled;

    return _devtools.rpc.sendRequest('Network.setCacheDisabled', params);
  }

/** Sets a cookie with the given cookie data; may overwrite equivalent cookies if they exist. */
/** name:[String] Cookie name. */
/** value:[String] Cookie value. */
/** url:[String] The request-URI to associate with the setting of the cookie. This value can affect the
default domain and path values of the created cookie. */
/** domain:[String] Cookie domain. */
/** path:[String] Cookie path. */
/** secure:[bool] True if cookie is secure. */
/** httpOnly:[bool] True if cookie is http-only. */
/** sameSite:[String] Cookie SameSite type. */
/** expires:[num] Cookie expiration date, session cookie if not set */
  dart_async.Future<NetworkSetCookieResponse> setCookie(
      {String name,
      String value,
      String url,
      String domain,
      String path,
      bool secure,
      bool httpOnly,
      String sameSite,
      num expires}) {
    var params = {};
    if (name != null) params['name'] = name;

    if (value != null) params['value'] = value;

    if (url != null) params['url'] = url;

    if (domain != null) params['domain'] = domain;

    if (path != null) params['path'] = path;

    if (secure != null) params['secure'] = secure;

    if (httpOnly != null) params['httpOnly'] = httpOnly;

    if (sameSite != null) params['sameSite'] = sameSite;

    if (expires != null) params['expires'] = expires;

    return _devtools.rpc
        .sendRequest('Network.setCookie', params)
        .then((response) => new NetworkSetCookieResponse(response));
  }

/** Sets given cookies. */
/** cookies:[List] Cookies to be set. */
  dart_async.Future setCookies({List<CookieParam> cookies}) {
    var params = {};
    if (cookies != null) params['cookies'] = cookies;

    return _devtools.rpc.sendRequest('Network.setCookies', params);
  }

/** For testing. */
/** maxTotalSize:[int] Maximum total buffer size. */
/** maxResourceSize:[int] Maximum per-resource size. */
  dart_async.Future setDataSizeLimitsForTest(
      {int maxTotalSize, int maxResourceSize}) {
    var params = {};
    if (maxTotalSize != null) params['maxTotalSize'] = maxTotalSize;

    if (maxResourceSize != null) params['maxResourceSize'] = maxResourceSize;

    return _devtools.rpc
        .sendRequest('Network.setDataSizeLimitsForTest', params);
  }

/** Specifies whether to always send extra HTTP headers with the requests from this page. */
/** headers:[Headers] Map with extra HTTP headers. */
  dart_async.Future setExtraHTTPHeaders({Headers headers}) {
    var params = {};
    if (headers != null) params['headers'] = headers;

    return _devtools.rpc.sendRequest('Network.setExtraHTTPHeaders', params);
  }

/** Sets the requests to intercept that match a the provided patterns and optionally resource types. */
/** patterns:[List] Requests matching any of these patterns will be forwarded and wait for the corresponding
continueInterceptedRequest call. */
  dart_async.Future setRequestInterception({List<RequestPattern> patterns}) {
    var params = {};
    if (patterns != null) params['patterns'] = patterns;

    return _devtools.rpc.sendRequest('Network.setRequestInterception', params);
  }

/** Allows overriding user agent with the given string. */
/** userAgent:[String] User agent to use. */
  dart_async.Future setUserAgentOverride({String userAgent}) {
    var params = {};
    if (userAgent != null) params['userAgent'] = userAgent;

    return _devtools.rpc.sendRequest('Network.setUserAgentOverride', params);
  }

/** Broadcast stream: Fired when data chunk was received over the network. */
  dart_async.Stream<NetworkDataReceivedEvent> get onDataReceived =>
      _onDataReceived.stream;
/** Broadcast stream: Fired when EventSource message is received. */
  dart_async.Stream<NetworkEventSourceMessageReceivedEvent>
      get onEventSourceMessageReceived => _onEventSourceMessageReceived.stream;
/** Broadcast stream: Fired when HTTP request has failed to load. */
  dart_async.Stream<NetworkLoadingFailedEvent> get onLoadingFailed =>
      _onLoadingFailed.stream;
/** Broadcast stream: Fired when HTTP request has finished loading. */
  dart_async.Stream<NetworkLoadingFinishedEvent> get onLoadingFinished =>
      _onLoadingFinished.stream;
/** Broadcast stream: Details of an intercepted HTTP request, which must be either allowed, blocked, modified or
mocked. */
  dart_async.Stream<NetworkRequestInterceptedEvent> get onRequestIntercepted =>
      _onRequestIntercepted.stream;
/** Broadcast stream: Fired if request ended up loading from cache. */
  dart_async.Stream<NetworkRequestServedFromCacheEvent>
      get onRequestServedFromCache => _onRequestServedFromCache.stream;
/** Broadcast stream: Fired when page is about to send HTTP request. */
  dart_async.Stream<NetworkRequestWillBeSentEvent> get onRequestWillBeSent =>
      _onRequestWillBeSent.stream;
/** Broadcast stream: Fired when resource loading priority is changed */
  dart_async.Stream<NetworkResourceChangedPriorityEvent>
      get onResourceChangedPriority => _onResourceChangedPriority.stream;
/** Broadcast stream: Fired when HTTP response is available. */
  dart_async.Stream<NetworkResponseReceivedEvent> get onResponseReceived =>
      _onResponseReceived.stream;
/** Broadcast stream: Fired when WebSocket is closed. */
  dart_async.Stream<NetworkWebSocketClosedEvent> get onWebSocketClosed =>
      _onWebSocketClosed.stream;
/** Broadcast stream: Fired upon WebSocket creation. */
  dart_async.Stream<NetworkWebSocketCreatedEvent> get onWebSocketCreated =>
      _onWebSocketCreated.stream;
/** Broadcast stream: Fired when WebSocket frame error occurs. */
  dart_async.Stream<NetworkWebSocketFrameErrorEvent>
      get onWebSocketFrameError => _onWebSocketFrameError.stream;
/** Broadcast stream: Fired when WebSocket frame is received. */
  dart_async.Stream<NetworkWebSocketFrameReceivedEvent>
      get onWebSocketFrameReceived => _onWebSocketFrameReceived.stream;
/** Broadcast stream: Fired when WebSocket frame is sent. */
  dart_async.Stream<NetworkWebSocketFrameSentEvent> get onWebSocketFrameSent =>
      _onWebSocketFrameSent.stream;
/** Broadcast stream: Fired when WebSocket handshake response becomes available. */
  dart_async.Stream<NetworkWebSocketHandshakeResponseReceivedEvent>
      get onWebSocketHandshakeResponseReceived =>
          _onWebSocketHandshakeResponseReceived.stream;
/** Broadcast stream: Fired when WebSocket is about to initiate handshake. */
  dart_async.Stream<NetworkWebSocketWillSendHandshakeRequestEvent>
      get onWebSocketWillSendHandshakeRequest =>
          _onWebSocketWillSendHandshakeRequest.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Network.dataReceived', (json_rpc_2.Parameters params) {
      _onDataReceived.add(new NetworkDataReceivedEvent(params.asMap));
    });

    rpc.registerMethod('Network.eventSourceMessageReceived',
        (json_rpc_2.Parameters params) {
      _onEventSourceMessageReceived
          .add(new NetworkEventSourceMessageReceivedEvent(params.asMap));
    });

    rpc.registerMethod('Network.loadingFailed', (json_rpc_2.Parameters params) {
      _onLoadingFailed.add(new NetworkLoadingFailedEvent(params.asMap));
    });

    rpc.registerMethod('Network.loadingFinished',
        (json_rpc_2.Parameters params) {
      _onLoadingFinished.add(new NetworkLoadingFinishedEvent(params.asMap));
    });

    rpc.registerMethod('Network.requestIntercepted',
        (json_rpc_2.Parameters params) {
      _onRequestIntercepted
          .add(new NetworkRequestInterceptedEvent(params.asMap));
    });

    rpc.registerMethod('Network.requestServedFromCache',
        (json_rpc_2.Parameters params) {
      _onRequestServedFromCache
          .add(new NetworkRequestServedFromCacheEvent(params.asMap));
    });

    rpc.registerMethod('Network.requestWillBeSent',
        (json_rpc_2.Parameters params) {
      _onRequestWillBeSent.add(new NetworkRequestWillBeSentEvent(params.asMap));
    });

    rpc.registerMethod('Network.resourceChangedPriority',
        (json_rpc_2.Parameters params) {
      _onResourceChangedPriority
          .add(new NetworkResourceChangedPriorityEvent(params.asMap));
    });

    rpc.registerMethod('Network.responseReceived',
        (json_rpc_2.Parameters params) {
      _onResponseReceived.add(new NetworkResponseReceivedEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketClosed',
        (json_rpc_2.Parameters params) {
      _onWebSocketClosed.add(new NetworkWebSocketClosedEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketCreated',
        (json_rpc_2.Parameters params) {
      _onWebSocketCreated.add(new NetworkWebSocketCreatedEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketFrameError',
        (json_rpc_2.Parameters params) {
      _onWebSocketFrameError
          .add(new NetworkWebSocketFrameErrorEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketFrameReceived',
        (json_rpc_2.Parameters params) {
      _onWebSocketFrameReceived
          .add(new NetworkWebSocketFrameReceivedEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketFrameSent',
        (json_rpc_2.Parameters params) {
      _onWebSocketFrameSent
          .add(new NetworkWebSocketFrameSentEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketHandshakeResponseReceived',
        (json_rpc_2.Parameters params) {
      _onWebSocketHandshakeResponseReceived.add(
          new NetworkWebSocketHandshakeResponseReceivedEvent(params.asMap));
    });

    rpc.registerMethod('Network.webSocketWillSendHandshakeRequest',
        (json_rpc_2.Parameters params) {
      _onWebSocketWillSendHandshakeRequest
          .add(new NetworkWebSocketWillSendHandshakeRequestEvent(params.asMap));
    });
  }

  void _close() {
    _onDataReceived.close();
    _onEventSourceMessageReceived.close();
    _onLoadingFailed.close();
    _onLoadingFinished.close();
    _onRequestIntercepted.close();
    _onRequestServedFromCache.close();
    _onRequestWillBeSent.close();
    _onResourceChangedPriority.close();
    _onResponseReceived.close();
    _onWebSocketClosed.close();
    _onWebSocketCreated.close();
    _onWebSocketFrameError.close();
    _onWebSocketFrameReceived.close();
    _onWebSocketFrameSent.close();
    _onWebSocketHandshakeResponseReceived.close();
    _onWebSocketWillSendHandshakeRequest.close();
  }
}

class OverlayGetHighlightObjectForTestResponse {
  OverlayGetHighlightObjectForTestResponse(Map map) {
    highlight = map['highlight'];
  }

  Map<String, dynamic> highlight;
}

/// Fired on `Overlay.inspectNodeRequested`.
class OverlayInspectNodeRequestedEvent {
  OverlayInspectNodeRequestedEvent(Map map) {
    backendNodeId = map['backendNodeId'];
  }

/** Id of the node to inspect. */
  int backendNodeId;
}

/// Fired on `Overlay.nodeHighlightRequested`.
class OverlayNodeHighlightRequestedEvent {
  OverlayNodeHighlightRequestedEvent(Map map) {
    nodeId = map['nodeId'];
  }

/**  */
  int nodeId;
}

/// Fired on `Overlay.screenshotRequested`.
class OverlayScreenshotRequestedEvent {
  OverlayScreenshotRequestedEvent(Map map) {
    viewport =
        map.containsKey('viewport') ? new Viewport(map['viewport']) : null;
  }

/** Viewport to capture, in CSS. */
  Viewport viewport;
}

class DevToolsOverlay {
  DevToolsOverlay(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<OverlayInspectNodeRequestedEvent>
      _onInspectNodeRequested = new dart_async.StreamController.broadcast();

  dart_async.StreamController<OverlayNodeHighlightRequestedEvent>
      _onNodeHighlightRequested = new dart_async.StreamController.broadcast();

  dart_async.StreamController<OverlayScreenshotRequestedEvent>
      _onScreenshotRequested = new dart_async.StreamController.broadcast();

/** Disables domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.disable', params);
  }

/** Enables domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.enable', params);
  }

/** For testing. */
/** nodeId:[int] Id of the node to get highlight object for. */
  dart_async.Future<OverlayGetHighlightObjectForTestResponse>
      getHighlightObjectForTest({int nodeId}) {
    var params = {};
    if (nodeId != null) params['nodeId'] = nodeId;

    return _devtools.rpc
        .sendRequest('Overlay.getHighlightObjectForTest', params)
        .then((response) =>
            new OverlayGetHighlightObjectForTestResponse(response));
  }

/** Hides any highlight. */
  dart_async.Future hideHighlight() {
    var params = {};
    return _devtools.rpc.sendRequest('Overlay.hideHighlight', params);
  }

/** Highlights owner element of the frame with given id. */
/** frameId:[String] Identifier of the frame to highlight. */
/** contentColor:[RGBA] The content box highlight fill color (default: transparent). */
/** contentOutlineColor:[RGBA] The content box highlight outline color (default: transparent). */
  dart_async.Future highlightFrame(
      {String frameId, RGBA contentColor, RGBA contentOutlineColor}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (contentColor != null) params['contentColor'] = contentColor;

    if (contentOutlineColor != null)
      params['contentOutlineColor'] = contentOutlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightFrame', params);
  }

/** Highlights DOM node with given id or with the given JavaScript object wrapper. Either nodeId or
objectId must be specified. */
/** highlightConfig:[HighlightConfig] A descriptor for the highlight appearance. */
/** nodeId:[int] Identifier of the node to highlight. */
/** backendNodeId:[int] Identifier of the backend node to highlight. */
/** objectId:[String] JavaScript object id of the node to be highlighted. */
  dart_async.Future highlightNode(
      {HighlightConfig highlightConfig,
      int nodeId,
      int backendNodeId,
      String objectId}) {
    var params = {};
    if (highlightConfig != null) params['highlightConfig'] = highlightConfig;

    if (nodeId != null) params['nodeId'] = nodeId;

    if (backendNodeId != null) params['backendNodeId'] = backendNodeId;

    if (objectId != null) params['objectId'] = objectId;

    return _devtools.rpc.sendRequest('Overlay.highlightNode', params);
  }

/** Highlights given quad. Coordinates are absolute with respect to the main frame viewport. */
/** quad:[List] Quad to highlight */
/** color:[RGBA] The highlight fill color (default: transparent). */
/** outlineColor:[RGBA] The highlight outline color (default: transparent). */
  dart_async.Future highlightQuad({List quad, RGBA color, RGBA outlineColor}) {
    var params = {};
    if (quad != null) params['quad'] = quad;

    if (color != null) params['color'] = color;

    if (outlineColor != null) params['outlineColor'] = outlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightQuad', params);
  }

/** Highlights given rectangle. Coordinates are absolute with respect to the main frame viewport. */
/** x:[int] X coordinate */
/** y:[int] Y coordinate */
/** width:[int] Rectangle width */
/** height:[int] Rectangle height */
/** color:[RGBA] The highlight fill color (default: transparent). */
/** outlineColor:[RGBA] The highlight outline color (default: transparent). */
  dart_async.Future highlightRect(
      {int x, int y, int width, int height, RGBA color, RGBA outlineColor}) {
    var params = {};
    if (x != null) params['x'] = x;

    if (y != null) params['y'] = y;

    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (color != null) params['color'] = color;

    if (outlineColor != null) params['outlineColor'] = outlineColor;

    return _devtools.rpc.sendRequest('Overlay.highlightRect', params);
  }

/** Enters the 'inspect' mode. In this mode, elements that user is hovering over are highlighted.
Backend then generates 'inspectNodeRequested' event upon element selection. */
/** mode:[String] Set an inspection mode. */
/** highlightConfig:[HighlightConfig] A descriptor for the highlight appearance of hovered-over nodes. May be omitted if `enabled
== false`. */
  dart_async.Future setInspectMode(
      {String mode, HighlightConfig highlightConfig}) {
    var params = {};
    if (mode != null) params['mode'] = mode;

    if (highlightConfig != null) params['highlightConfig'] = highlightConfig;

    return _devtools.rpc.sendRequest('Overlay.setInspectMode', params);
  }

/**  */
/** message:[String] The message to display, also triggers resume and step over controls. */
  dart_async.Future setPausedInDebuggerMessage({String message}) {
    var params = {};
    if (message != null) params['message'] = message;

    return _devtools.rpc
        .sendRequest('Overlay.setPausedInDebuggerMessage', params);
  }

/** Requests that backend shows debug borders on layers */
/** show:[bool] True for showing debug borders */
  dart_async.Future setShowDebugBorders({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc.sendRequest('Overlay.setShowDebugBorders', params);
  }

/** Requests that backend shows the FPS counter */
/** show:[bool] True for showing the FPS counter */
  dart_async.Future setShowFPSCounter({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc.sendRequest('Overlay.setShowFPSCounter', params);
  }

/** Requests that backend shows paint rectangles */
/** result:[bool] True for showing paint rectangles */
  dart_async.Future setShowPaintRects({bool result}) {
    var params = {};
    if (result != null) params['result'] = result;

    return _devtools.rpc.sendRequest('Overlay.setShowPaintRects', params);
  }

/** Requests that backend shows scroll bottleneck rects */
/** show:[bool] True for showing scroll bottleneck rects */
  dart_async.Future setShowScrollBottleneckRects({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc
        .sendRequest('Overlay.setShowScrollBottleneckRects', params);
  }

/** Paints viewport size upon main frame resize. */
/** show:[bool] Whether to paint size or not. */
  dart_async.Future setShowViewportSizeOnResize({bool show}) {
    var params = {};
    if (show != null) params['show'] = show;

    return _devtools.rpc
        .sendRequest('Overlay.setShowViewportSizeOnResize', params);
  }

/**  */
/** suspended:[bool] Whether overlay should be suspended and not consume any resources until resumed. */
  dart_async.Future setSuspended({bool suspended}) {
    var params = {};
    if (suspended != null) params['suspended'] = suspended;

    return _devtools.rpc.sendRequest('Overlay.setSuspended', params);
  }

/** Broadcast stream: Fired when the node should be inspected. This happens after call to `setInspectMode` or when
user manually inspects an element. */
  dart_async.Stream<OverlayInspectNodeRequestedEvent>
      get onInspectNodeRequested => _onInspectNodeRequested.stream;
/** Broadcast stream: Fired when the node should be highlighted. This happens after call to `setInspectMode`. */
  dart_async.Stream<OverlayNodeHighlightRequestedEvent>
      get onNodeHighlightRequested => _onNodeHighlightRequested.stream;
/** Broadcast stream: Fired when user asks to capture screenshot of some area on the page. */
  dart_async.Stream<OverlayScreenshotRequestedEvent>
      get onScreenshotRequested => _onScreenshotRequested.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Overlay.inspectNodeRequested',
        (json_rpc_2.Parameters params) {
      _onInspectNodeRequested
          .add(new OverlayInspectNodeRequestedEvent(params.asMap));
    });

    rpc.registerMethod('Overlay.nodeHighlightRequested',
        (json_rpc_2.Parameters params) {
      _onNodeHighlightRequested
          .add(new OverlayNodeHighlightRequestedEvent(params.asMap));
    });

    rpc.registerMethod('Overlay.screenshotRequested',
        (json_rpc_2.Parameters params) {
      _onScreenshotRequested
          .add(new OverlayScreenshotRequestedEvent(params.asMap));
    });
  }

  void _close() {
    _onInspectNodeRequested.close();
    _onNodeHighlightRequested.close();
    _onScreenshotRequested.close();
  }
}

class PageAddScriptToEvaluateOnLoadResponse {
  PageAddScriptToEvaluateOnLoadResponse(Map map) {
    identifier = map['identifier'];
  }

  String identifier;
}

class PageAddScriptToEvaluateOnNewDocumentResponse {
  PageAddScriptToEvaluateOnNewDocumentResponse(Map map) {
    identifier = map['identifier'];
  }

  String identifier;
}

class PageCaptureScreenshotResponse {
  PageCaptureScreenshotResponse(Map map) {
    data = map['data'];
  }

  String data;
}

class PageCreateIsolatedWorldResponse {
  PageCreateIsolatedWorldResponse(Map map) {
    executionContextId = map['executionContextId'];
  }

  int executionContextId;
}

class PageGetAppManifestResponse {
  PageGetAppManifestResponse(Map map) {
    url = map['url'];
    errors = map['errors'] is Iterable
        ? map['errors'].map((m) => new AppManifestError(m)).toList()
        : null;
    data = map['data'];
  }

  String url;

  List<AppManifestError> errors;

  String data;
}

class PageGetCookiesResponse {
  PageGetCookiesResponse(Map map) {
    cookies = map['cookies'] is Iterable
        ? map['cookies'].map((m) => new Cookie(m)).toList()
        : null;
  }

  List<Cookie> cookies;
}

class PageGetFrameTreeResponse {
  PageGetFrameTreeResponse(Map map) {
    frameTree =
        map.containsKey('frameTree') ? new FrameTree(map['frameTree']) : null;
  }

  FrameTree frameTree;
}

class PageGetLayoutMetricsResponse {
  PageGetLayoutMetricsResponse(Map map) {
    layoutViewport = map.containsKey('layoutViewport')
        ? new LayoutViewport(map['layoutViewport'])
        : null;
    visualViewport = map.containsKey('visualViewport')
        ? new VisualViewport(map['visualViewport'])
        : null;
    contentSize =
        map.containsKey('contentSize') ? new Rect(map['contentSize']) : null;
  }

  LayoutViewport layoutViewport;

  VisualViewport visualViewport;

  Rect contentSize;
}

class PageGetNavigationHistoryResponse {
  PageGetNavigationHistoryResponse(Map map) {
    currentIndex = map['currentIndex'];
    entries = map['entries'] is Iterable
        ? map['entries'].map((m) => new NavigationEntry(m)).toList()
        : null;
  }

  int currentIndex;

  List<NavigationEntry> entries;
}

class PageGetResourceContentResponse {
  PageGetResourceContentResponse(Map map) {
    content = map['content'];
    base64Encoded = map['base64Encoded'];
  }

  String content;

  bool base64Encoded;
}

class PageGetResourceTreeResponse {
  PageGetResourceTreeResponse(Map map) {
    frameTree = map.containsKey('frameTree')
        ? new FrameResourceTree(map['frameTree'])
        : null;
  }

  FrameResourceTree frameTree;
}

class PageNavigateResponse {
  PageNavigateResponse(Map map) {
    frameId = map['frameId'];
    loaderId = map['loaderId'];
    errorText = map['errorText'];
  }

  String frameId;

  String loaderId;

  String errorText;
}

class PagePrintToPDFResponse {
  PagePrintToPDFResponse(Map map) {
    data = map['data'];
  }

  String data;
}

class PageSearchInResourceResponse {
  PageSearchInResourceResponse(Map map) {
    result = map['result'] is Iterable
        ? map['result'].map((m) => new SearchMatch(m)).toList()
        : null;
  }

  List<SearchMatch> result;
}

/// Fired on `Page.domContentEventFired`.
class PageDomContentEventFiredEvent {
  PageDomContentEventFiredEvent(Map map) {
    timestamp = map['timestamp'];
  }

/**  */
  num timestamp;
}

/// Fired on `Page.frameAttached`.
class PageFrameAttachedEvent {
  PageFrameAttachedEvent(Map map) {
    frameId = map['frameId'];
    parentFrameId = map['parentFrameId'];
    stack = map.containsKey('stack') ? new StackTrace(map['stack']) : null;
  }

/** Id of the frame that has been attached. */
  String frameId;

/** Parent frame identifier. */
  String parentFrameId;

/** JavaScript stack trace of when frame was attached, only set if frame initiated from script. */
  StackTrace stack;
}

/// Fired on `Page.frameClearedScheduledNavigation`.
class PageFrameClearedScheduledNavigationEvent {
  PageFrameClearedScheduledNavigationEvent(Map map) {
    frameId = map['frameId'];
  }

/** Id of the frame that has cleared its scheduled navigation. */
  String frameId;
}

/// Fired on `Page.frameDetached`.
class PageFrameDetachedEvent {
  PageFrameDetachedEvent(Map map) {
    frameId = map['frameId'];
  }

/** Id of the frame that has been detached. */
  String frameId;
}

/// Fired on `Page.frameNavigated`.
class PageFrameNavigatedEvent {
  PageFrameNavigatedEvent(Map map) {
    frame = map.containsKey('frame') ? new Frame(map['frame']) : null;
  }

/** Frame object. */
  Frame frame;
}

/// Fired on `Page.frameResized`.
class PageFrameResizedEvent {
  PageFrameResizedEvent(Map map) {}
}

/// Fired on `Page.frameScheduledNavigation`.
class PageFrameScheduledNavigationEvent {
  PageFrameScheduledNavigationEvent(Map map) {
    frameId = map['frameId'];
    delay = map['delay'];
    reason = map['reason'];
    url = map['url'];
  }

/** Id of the frame that has scheduled a navigation. */
  String frameId;

/** Delay (in seconds) until the navigation is scheduled to begin. The navigation is not
guaranteed to start. */
  num delay;

/** The reason for the navigation. */
  String reason;

/** The destination URL for the scheduled navigation. */
  String url;
}

/// Fired on `Page.frameStartedLoading`.
class PageFrameStartedLoadingEvent {
  PageFrameStartedLoadingEvent(Map map) {
    frameId = map['frameId'];
  }

/** Id of the frame that has started loading. */
  String frameId;
}

/// Fired on `Page.frameStoppedLoading`.
class PageFrameStoppedLoadingEvent {
  PageFrameStoppedLoadingEvent(Map map) {
    frameId = map['frameId'];
  }

/** Id of the frame that has stopped loading. */
  String frameId;
}

/// Fired on `Page.interstitialHidden`.
class PageInterstitialHiddenEvent {
  PageInterstitialHiddenEvent(Map map) {}
}

/// Fired on `Page.interstitialShown`.
class PageInterstitialShownEvent {
  PageInterstitialShownEvent(Map map) {}
}

/// Fired on `Page.javascriptDialogClosed`.
class PageJavascriptDialogClosedEvent {
  PageJavascriptDialogClosedEvent(Map map) {
    result = map['result'];
    userInput = map['userInput'];
  }

/** Whether dialog was confirmed. */
  bool result;

/** User input in case of prompt. */
  String userInput;
}

/// Fired on `Page.javascriptDialogOpening`.
class PageJavascriptDialogOpeningEvent {
  PageJavascriptDialogOpeningEvent(Map map) {
    url = map['url'];
    message = map['message'];
    type = map['type'];
    defaultPrompt = map['defaultPrompt'];
  }

/** Frame url. */
  String url;

/** Message that will be displayed by the dialog. */
  String message;

/** Dialog type. */
  String type;

/** Default dialog prompt. */
  String defaultPrompt;
}

/// Fired on `Page.lifecycleEvent`.
class PageLifecycleEventEvent {
  PageLifecycleEventEvent(Map map) {
    frameId = map['frameId'];
    loaderId = map['loaderId'];
    name = map['name'];
    timestamp = map['timestamp'];
  }

/** Id of the frame. */
  String frameId;

/** Loader identifier. Empty string if the request is fetched from worker. */
  String loaderId;

/**  */
  String name;

/**  */
  num timestamp;
}

/// Fired on `Page.loadEventFired`.
class PageLoadEventFiredEvent {
  PageLoadEventFiredEvent(Map map) {
    timestamp = map['timestamp'];
  }

/**  */
  num timestamp;
}

/// Fired on `Page.screencastFrame`.
class PageScreencastFrameEvent {
  PageScreencastFrameEvent(Map map) {
    data = map['data'];
    metadata = map.containsKey('metadata')
        ? new ScreencastFrameMetadata(map['metadata'])
        : null;
    sessionId = map['sessionId'];
  }

/** Base64-encoded compressed image. */
  String data;

/** Screencast frame metadata. */
  ScreencastFrameMetadata metadata;

/** Frame number. */
  int sessionId;
}

/// Fired on `Page.screencastVisibilityChanged`.
class PageScreencastVisibilityChangedEvent {
  PageScreencastVisibilityChangedEvent(Map map) {
    visible = map['visible'];
  }

/** True if the page is visible. */
  bool visible;
}

/// Fired on `Page.windowOpen`.
class PageWindowOpenEvent {
  PageWindowOpenEvent(Map map) {
    url = map['url'];
    windowName = map['windowName'];
    windowFeatures = map['windowFeatures'];
    userGesture = map['userGesture'];
  }

/** The URL for the new window. */
  String url;

/** Window name. */
  String windowName;

/** An array of enabled window features. */
  List windowFeatures;

/** Whether or not it was triggered by user gesture. */
  bool userGesture;
}

class DevToolsPage {
  DevToolsPage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<PageDomContentEventFiredEvent>
      _onDomContentEventFired = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameAttachedEvent> _onFrameAttached =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameClearedScheduledNavigationEvent>
      _onFrameClearedScheduledNavigation =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameDetachedEvent> _onFrameDetached =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameNavigatedEvent> _onFrameNavigated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameResizedEvent> _onFrameResized =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameScheduledNavigationEvent>
      _onFrameScheduledNavigation = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameStartedLoadingEvent>
      _onFrameStartedLoading = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageFrameStoppedLoadingEvent>
      _onFrameStoppedLoading = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageInterstitialHiddenEvent>
      _onInterstitialHidden = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageInterstitialShownEvent> _onInterstitialShown =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageJavascriptDialogClosedEvent>
      _onJavascriptDialogClosed = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageJavascriptDialogOpeningEvent>
      _onJavascriptDialogOpening = new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageLifecycleEventEvent> _onLifecycleEvent =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageLoadEventFiredEvent> _onLoadEventFired =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageScreencastFrameEvent> _onScreencastFrame =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageScreencastVisibilityChangedEvent>
      _onScreencastVisibilityChanged =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<PageWindowOpenEvent> _onWindowOpen =
      new dart_async.StreamController.broadcast();

/** Deprecated, please use addScriptToEvaluateOnNewDocument instead. */
/** scriptSource:[String]  */
  dart_async.Future<PageAddScriptToEvaluateOnLoadResponse>
      addScriptToEvaluateOnLoad({String scriptSource}) {
    var params = {};
    if (scriptSource != null) params['scriptSource'] = scriptSource;

    return _devtools.rpc
        .sendRequest('Page.addScriptToEvaluateOnLoad', params)
        .then(
            (response) => new PageAddScriptToEvaluateOnLoadResponse(response));
  }

/** Evaluates given script in every frame upon creation (before loading frame's scripts). */
/** source:[String]  */
  dart_async.Future<PageAddScriptToEvaluateOnNewDocumentResponse>
      addScriptToEvaluateOnNewDocument({String source}) {
    var params = {};
    if (source != null) params['source'] = source;

    return _devtools.rpc
        .sendRequest('Page.addScriptToEvaluateOnNewDocument', params)
        .then((response) =>
            new PageAddScriptToEvaluateOnNewDocumentResponse(response));
  }

/** Brings page to front (activates tab). */
  dart_async.Future bringToFront() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.bringToFront', params);
  }

/** Capture page screenshot. */
/** format:[String] Image compression format (defaults to png). */
/** quality:[int] Compression quality from range [0..100] (jpeg only). */
/** clip:[Viewport] Capture the screenshot of a given region only. */
/** fromSurface:[bool] Capture the screenshot from the surface, rather than the view. Defaults to true. */
  dart_async.Future<PageCaptureScreenshotResponse> captureScreenshot(
      {String format, int quality, Viewport clip, bool fromSurface}) {
    var params = {};
    if (format != null) params['format'] = format;

    if (quality != null) params['quality'] = quality;

    if (clip != null) params['clip'] = clip;

    if (fromSurface != null) params['fromSurface'] = fromSurface;

    return _devtools.rpc
        .sendRequest('Page.captureScreenshot', params)
        .then((response) => new PageCaptureScreenshotResponse(response));
  }

/** Clears the overriden device metrics. */
  dart_async.Future clearDeviceMetricsOverride() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.clearDeviceMetricsOverride', params);
  }

/** Clears the overridden Device Orientation. */
  dart_async.Future clearDeviceOrientationOverride() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.clearDeviceOrientationOverride', params);
  }

/** Clears the overriden Geolocation Position and Error. */
  dart_async.Future clearGeolocationOverride() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.clearGeolocationOverride', params);
  }

/** Creates an isolated world for the given frame. */
/** frameId:[String] Id of the frame in which the isolated world should be created. */
/** worldName:[String] An optional name which is reported in the Execution Context. */
/** grantUniveralAccess:[bool] Whether or not universal access should be granted to the isolated world. This is a powerful
option, use with caution. */
  dart_async.Future<PageCreateIsolatedWorldResponse> createIsolatedWorld(
      {String frameId, String worldName, bool grantUniveralAccess}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (worldName != null) params['worldName'] = worldName;

    if (grantUniveralAccess != null)
      params['grantUniveralAccess'] = grantUniveralAccess;

    return _devtools.rpc
        .sendRequest('Page.createIsolatedWorld', params)
        .then((response) => new PageCreateIsolatedWorldResponse(response));
  }

/** Deletes browser cookie with given name, domain and path. */
/** cookieName:[String] Name of the cookie to remove. */
/** url:[String] URL to match cooke domain and path. */
  dart_async.Future deleteCookie({String cookieName, String url}) {
    var params = {};
    if (cookieName != null) params['cookieName'] = cookieName;

    if (url != null) params['url'] = url;

    return _devtools.rpc.sendRequest('Page.deleteCookie', params);
  }

/** Disables page domain notifications. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.disable', params);
  }

/** Enables page domain notifications. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.enable', params);
  }

/**  */
  dart_async.Future<PageGetAppManifestResponse> getAppManifest() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getAppManifest', params)
        .then((response) => new PageGetAppManifestResponse(response));
  }

/** Returns all browser cookies. Depending on the backend support, will return detailed cookie
information in the `cookies` field. */
  dart_async.Future<PageGetCookiesResponse> getCookies() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getCookies', params)
        .then((response) => new PageGetCookiesResponse(response));
  }

/** Returns present frame tree structure. */
  dart_async.Future<PageGetFrameTreeResponse> getFrameTree() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getFrameTree', params)
        .then((response) => new PageGetFrameTreeResponse(response));
  }

/** Returns metrics relating to the layouting of the page, such as viewport bounds/scale. */
  dart_async.Future<PageGetLayoutMetricsResponse> getLayoutMetrics() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getLayoutMetrics', params)
        .then((response) => new PageGetLayoutMetricsResponse(response));
  }

/** Returns navigation history for the current page. */
  dart_async.Future<PageGetNavigationHistoryResponse> getNavigationHistory() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getNavigationHistory', params)
        .then((response) => new PageGetNavigationHistoryResponse(response));
  }

/** Returns content of the given resource. */
/** frameId:[String] Frame id to get resource for. */
/** url:[String] URL of the resource to get content for. */
  dart_async.Future<PageGetResourceContentResponse> getResourceContent(
      {String frameId, String url}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (url != null) params['url'] = url;

    return _devtools.rpc
        .sendRequest('Page.getResourceContent', params)
        .then((response) => new PageGetResourceContentResponse(response));
  }

/** Returns present frame / resource tree structure. */
  dart_async.Future<PageGetResourceTreeResponse> getResourceTree() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Page.getResourceTree', params)
        .then((response) => new PageGetResourceTreeResponse(response));
  }

/** Accepts or dismisses a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload). */
/** accept:[bool] Whether to accept or dismiss the dialog. */
/** promptText:[String] The text to enter into the dialog prompt before accepting. Used only if this is a prompt
dialog. */
  dart_async.Future handleJavaScriptDialog({bool accept, String promptText}) {
    var params = {};
    if (accept != null) params['accept'] = accept;

    if (promptText != null) params['promptText'] = promptText;

    return _devtools.rpc.sendRequest('Page.handleJavaScriptDialog', params);
  }

/** Navigates current page to the given URL. */
/** url:[String] URL to navigate the page to. */
/** referrer:[String] Referrer URL. */
/** transitionType:[String] Intended transition type. */
/** frameId:[String] Frame id to navigate, if not specified navigates the top frame. */
  dart_async.Future<PageNavigateResponse> navigate(
      {String url, String referrer, String transitionType, String frameId}) {
    var params = {};
    if (url != null) params['url'] = url;

    if (referrer != null) params['referrer'] = referrer;

    if (transitionType != null) params['transitionType'] = transitionType;

    if (frameId != null) params['frameId'] = frameId;

    return _devtools.rpc
        .sendRequest('Page.navigate', params)
        .then((response) => new PageNavigateResponse(response));
  }

/** Navigates current page to the given history entry. */
/** entryId:[int] Unique id of the entry to navigate to. */
  dart_async.Future navigateToHistoryEntry({int entryId}) {
    var params = {};
    if (entryId != null) params['entryId'] = entryId;

    return _devtools.rpc.sendRequest('Page.navigateToHistoryEntry', params);
  }

/** Print page as PDF. */
/** landscape:[bool] Paper orientation. Defaults to false. */
/** displayHeaderFooter:[bool] Display header and footer. Defaults to false. */
/** printBackground:[bool] Print background graphics. Defaults to false. */
/** scale:[num] Scale of the webpage rendering. Defaults to 1. */
/** paperWidth:[num] Paper width in inches. Defaults to 8.5 inches. */
/** paperHeight:[num] Paper height in inches. Defaults to 11 inches. */
/** marginTop:[num] Top margin in inches. Defaults to 1cm (~0.4 inches). */
/** marginBottom:[num] Bottom margin in inches. Defaults to 1cm (~0.4 inches). */
/** marginLeft:[num] Left margin in inches. Defaults to 1cm (~0.4 inches). */
/** marginRight:[num] Right margin in inches. Defaults to 1cm (~0.4 inches). */
/** pageRanges:[String] Paper ranges to print, e.g., '1-5, 8, 11-13'. Defaults to the empty string, which means
print all pages. */
/** ignoreInvalidPageRanges:[bool] Whether to silently ignore invalid but successfully parsed page ranges, such as '3-2'.
Defaults to false. */
/** headerTemplate:[String] HTML template for the print header. Should be valid HTML markup with following
classes used to inject printing values into them:
- date - formatted print date
- title - document title
- url - document location
- pageNumber - current page number
- totalPages - total pages in the document

For example, <span class=title></span> would generate span containing the title. */
/** footerTemplate:[String] HTML template for the print footer. Should use the same format as the `headerTemplate`. */
/** preferCSSPageSize:[bool] Whether or not to prefer page size as defined by css. Defaults to false,
in which case the content will be scaled to fit the paper size. */
  dart_async.Future<PagePrintToPDFResponse> printToPDF(
      {bool landscape,
      bool displayHeaderFooter,
      bool printBackground,
      num scale,
      num paperWidth,
      num paperHeight,
      num marginTop,
      num marginBottom,
      num marginLeft,
      num marginRight,
      String pageRanges,
      bool ignoreInvalidPageRanges,
      String headerTemplate,
      String footerTemplate,
      bool preferCSSPageSize}) {
    var params = {};
    if (landscape != null) params['landscape'] = landscape;

    if (displayHeaderFooter != null)
      params['displayHeaderFooter'] = displayHeaderFooter;

    if (printBackground != null) params['printBackground'] = printBackground;

    if (scale != null) params['scale'] = scale;

    if (paperWidth != null) params['paperWidth'] = paperWidth;

    if (paperHeight != null) params['paperHeight'] = paperHeight;

    if (marginTop != null) params['marginTop'] = marginTop;

    if (marginBottom != null) params['marginBottom'] = marginBottom;

    if (marginLeft != null) params['marginLeft'] = marginLeft;

    if (marginRight != null) params['marginRight'] = marginRight;

    if (pageRanges != null) params['pageRanges'] = pageRanges;

    if (ignoreInvalidPageRanges != null)
      params['ignoreInvalidPageRanges'] = ignoreInvalidPageRanges;

    if (headerTemplate != null) params['headerTemplate'] = headerTemplate;

    if (footerTemplate != null) params['footerTemplate'] = footerTemplate;

    if (preferCSSPageSize != null)
      params['preferCSSPageSize'] = preferCSSPageSize;

    return _devtools.rpc
        .sendRequest('Page.printToPDF', params)
        .then((response) => new PagePrintToPDFResponse(response));
  }

/** Reloads given page optionally ignoring the cache. */
/** ignoreCache:[bool] If true, browser cache is ignored (as if the user pressed Shift+refresh). */
/** scriptToEvaluateOnLoad:[String] If set, the script will be injected into all frames of the inspected page after reload.
Argument will be ignored if reloading dataURL origin. */
  dart_async.Future reload({bool ignoreCache, String scriptToEvaluateOnLoad}) {
    var params = {};
    if (ignoreCache != null) params['ignoreCache'] = ignoreCache;

    if (scriptToEvaluateOnLoad != null)
      params['scriptToEvaluateOnLoad'] = scriptToEvaluateOnLoad;

    return _devtools.rpc.sendRequest('Page.reload', params);
  }

/** Deprecated, please use removeScriptToEvaluateOnNewDocument instead. */
/** identifier:[String]  */
  dart_async.Future removeScriptToEvaluateOnLoad({String identifier}) {
    var params = {};
    if (identifier != null) params['identifier'] = identifier;

    return _devtools.rpc
        .sendRequest('Page.removeScriptToEvaluateOnLoad', params);
  }

/** Removes given script from the list. */
/** identifier:[String]  */
  dart_async.Future removeScriptToEvaluateOnNewDocument({String identifier}) {
    var params = {};
    if (identifier != null) params['identifier'] = identifier;

    return _devtools.rpc
        .sendRequest('Page.removeScriptToEvaluateOnNewDocument', params);
  }

/**  */
  dart_async.Future requestAppBanner() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.requestAppBanner', params);
  }

/** Acknowledges that a screencast frame has been received by the frontend. */
/** sessionId:[int] Frame number. */
  dart_async.Future screencastFrameAck({int sessionId}) {
    var params = {};
    if (sessionId != null) params['sessionId'] = sessionId;

    return _devtools.rpc.sendRequest('Page.screencastFrameAck', params);
  }

/** Searches for given string in resource content. */
/** frameId:[String] Frame id for resource to search in. */
/** url:[String] URL of the resource to search in. */
/** query:[String] String to search for. */
/** caseSensitive:[bool] If true, search is case sensitive. */
/** isRegex:[bool] If true, treats string parameter as regex. */
  dart_async.Future<PageSearchInResourceResponse> searchInResource(
      {String frameId,
      String url,
      String query,
      bool caseSensitive,
      bool isRegex}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (url != null) params['url'] = url;

    if (query != null) params['query'] = query;

    if (caseSensitive != null) params['caseSensitive'] = caseSensitive;

    if (isRegex != null) params['isRegex'] = isRegex;

    return _devtools.rpc
        .sendRequest('Page.searchInResource', params)
        .then((response) => new PageSearchInResourceResponse(response));
  }

/** Enable Chrome's experimental ad filter on all sites. */
/** enabled:[bool] Whether to block ads. */
  dart_async.Future setAdBlockingEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc.sendRequest('Page.setAdBlockingEnabled', params);
  }

/** Overrides the values of device screen dimensions (window.screen.width, window.screen.height,
window.innerWidth, window.innerHeight, and "device-width"/"device-height"-related CSS media
query results). */
/** width:[int] Overriding width value in pixels (minimum 0, maximum 10000000). 0 disables the override. */
/** height:[int] Overriding height value in pixels (minimum 0, maximum 10000000). 0 disables the override. */
/** deviceScaleFactor:[num] Overriding device scale factor value. 0 disables the override. */
/** mobile:[bool] Whether to emulate mobile device. This includes viewport meta tag, overlay scrollbars, text
autosizing and more. */
/** scale:[num] Scale to apply to resulting view image. */
/** screenWidth:[int] Overriding screen width value in pixels (minimum 0, maximum 10000000). */
/** screenHeight:[int] Overriding screen height value in pixels (minimum 0, maximum 10000000). */
/** positionX:[int] Overriding view X position on screen in pixels (minimum 0, maximum 10000000). */
/** positionY:[int] Overriding view Y position on screen in pixels (minimum 0, maximum 10000000). */
/** dontSetVisibleSize:[bool] Do not set visible view size, rely upon explicit setVisibleSize call. */
/** screenOrientation:[ScreenOrientation] Screen orientation override. */
/** viewport:[Viewport] The viewport dimensions and scale. If not set, the override is cleared. */
  dart_async.Future setDeviceMetricsOverride(
      {int width,
      int height,
      num deviceScaleFactor,
      bool mobile,
      num scale,
      int screenWidth,
      int screenHeight,
      int positionX,
      int positionY,
      bool dontSetVisibleSize,
      ScreenOrientation screenOrientation,
      Viewport viewport}) {
    var params = {};
    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (deviceScaleFactor != null)
      params['deviceScaleFactor'] = deviceScaleFactor;

    if (mobile != null) params['mobile'] = mobile;

    if (scale != null) params['scale'] = scale;

    if (screenWidth != null) params['screenWidth'] = screenWidth;

    if (screenHeight != null) params['screenHeight'] = screenHeight;

    if (positionX != null) params['positionX'] = positionX;

    if (positionY != null) params['positionY'] = positionY;

    if (dontSetVisibleSize != null)
      params['dontSetVisibleSize'] = dontSetVisibleSize;

    if (screenOrientation != null)
      params['screenOrientation'] = screenOrientation;

    if (viewport != null) params['viewport'] = viewport;

    return _devtools.rpc.sendRequest('Page.setDeviceMetricsOverride', params);
  }

/** Overrides the Device Orientation. */
/** alpha:[num] Mock alpha */
/** beta:[num] Mock beta */
/** gamma:[num] Mock gamma */
  dart_async.Future setDeviceOrientationOverride(
      {num alpha, num beta, num gamma}) {
    var params = {};
    if (alpha != null) params['alpha'] = alpha;

    if (beta != null) params['beta'] = beta;

    if (gamma != null) params['gamma'] = gamma;

    return _devtools.rpc
        .sendRequest('Page.setDeviceOrientationOverride', params);
  }

/** Sets given markup as the document's HTML. */
/** frameId:[String] Frame id to set HTML for. */
/** html:[String] HTML content to set. */
  dart_async.Future setDocumentContent({String frameId, String html}) {
    var params = {};
    if (frameId != null) params['frameId'] = frameId;

    if (html != null) params['html'] = html;

    return _devtools.rpc.sendRequest('Page.setDocumentContent', params);
  }

/** Set the behavior when downloading a file. */
/** behavior:[String] Whether to allow all or deny all download requests, or use default Chrome behavior if
available (otherwise deny). */
/** downloadPath:[String] The default path to save downloaded files to. This is requred if behavior is set to 'allow' */
  dart_async.Future setDownloadBehavior(
      {String behavior, String downloadPath}) {
    var params = {};
    if (behavior != null) params['behavior'] = behavior;

    if (downloadPath != null) params['downloadPath'] = downloadPath;

    return _devtools.rpc.sendRequest('Page.setDownloadBehavior', params);
  }

/** Overrides the Geolocation Position or Error. Omitting any of the parameters emulates position
unavailable. */
/** latitude:[num] Mock latitude */
/** longitude:[num] Mock longitude */
/** accuracy:[num] Mock accuracy */
  dart_async.Future setGeolocationOverride(
      {num latitude, num longitude, num accuracy}) {
    var params = {};
    if (latitude != null) params['latitude'] = latitude;

    if (longitude != null) params['longitude'] = longitude;

    if (accuracy != null) params['accuracy'] = accuracy;

    return _devtools.rpc.sendRequest('Page.setGeolocationOverride', params);
  }

/** Controls whether page will emit lifecycle events. */
/** enabled:[bool] If true, starts emitting lifecycle events. */
  dart_async.Future setLifecycleEventsEnabled({bool enabled}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    return _devtools.rpc.sendRequest('Page.setLifecycleEventsEnabled', params);
  }

/** Toggles mouse event-based touch event emulation. */
/** enabled:[bool] Whether the touch event emulation should be enabled. */
/** configuration:[String] Touch/gesture events configuration. Default: current platform. */
  dart_async.Future setTouchEmulationEnabled(
      {bool enabled, String configuration}) {
    var params = {};
    if (enabled != null) params['enabled'] = enabled;

    if (configuration != null) params['configuration'] = configuration;

    return _devtools.rpc.sendRequest('Page.setTouchEmulationEnabled', params);
  }

/** Starts sending each frame using the `screencastFrame` event. */
/** format:[String] Image compression format. */
/** quality:[int] Compression quality from range [0..100]. */
/** maxWidth:[int] Maximum screenshot width. */
/** maxHeight:[int] Maximum screenshot height. */
/** everyNthFrame:[int] Send every n-th frame. */
  dart_async.Future startScreencast(
      {String format,
      int quality,
      int maxWidth,
      int maxHeight,
      int everyNthFrame}) {
    var params = {};
    if (format != null) params['format'] = format;

    if (quality != null) params['quality'] = quality;

    if (maxWidth != null) params['maxWidth'] = maxWidth;

    if (maxHeight != null) params['maxHeight'] = maxHeight;

    if (everyNthFrame != null) params['everyNthFrame'] = everyNthFrame;

    return _devtools.rpc.sendRequest('Page.startScreencast', params);
  }

/** Force the page stop all navigations and pending resource fetches. */
  dart_async.Future stopLoading() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.stopLoading', params);
  }

/** Crashes renderer on the IO thread, generates minidumps. */
  dart_async.Future crash() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.crash', params);
  }

/** Stops sending each frame in the `screencastFrame`. */
  dart_async.Future stopScreencast() {
    var params = {};
    return _devtools.rpc.sendRequest('Page.stopScreencast', params);
  }

/** Broadcast stream:  */
  dart_async.Stream<PageDomContentEventFiredEvent> get onDomContentEventFired =>
      _onDomContentEventFired.stream;
/** Broadcast stream: Fired when frame has been attached to its parent. */
  dart_async.Stream<PageFrameAttachedEvent> get onFrameAttached =>
      _onFrameAttached.stream;
/** Broadcast stream: Fired when frame no longer has a scheduled navigation. */
  dart_async.Stream<PageFrameClearedScheduledNavigationEvent>
      get onFrameClearedScheduledNavigation =>
          _onFrameClearedScheduledNavigation.stream;
/** Broadcast stream: Fired when frame has been detached from its parent. */
  dart_async.Stream<PageFrameDetachedEvent> get onFrameDetached =>
      _onFrameDetached.stream;
/** Broadcast stream: Fired once navigation of the frame has completed. Frame is now associated with the new loader. */
  dart_async.Stream<PageFrameNavigatedEvent> get onFrameNavigated =>
      _onFrameNavigated.stream;
/** Broadcast stream:  */
  dart_async.Stream<PageFrameResizedEvent> get onFrameResized =>
      _onFrameResized.stream;
/** Broadcast stream: Fired when frame schedules a potential navigation. */
  dart_async.Stream<PageFrameScheduledNavigationEvent>
      get onFrameScheduledNavigation => _onFrameScheduledNavigation.stream;
/** Broadcast stream: Fired when frame has started loading. */
  dart_async.Stream<PageFrameStartedLoadingEvent> get onFrameStartedLoading =>
      _onFrameStartedLoading.stream;
/** Broadcast stream: Fired when frame has stopped loading. */
  dart_async.Stream<PageFrameStoppedLoadingEvent> get onFrameStoppedLoading =>
      _onFrameStoppedLoading.stream;
/** Broadcast stream: Fired when interstitial page was hidden */
  dart_async.Stream<PageInterstitialHiddenEvent> get onInterstitialHidden =>
      _onInterstitialHidden.stream;
/** Broadcast stream: Fired when interstitial page was shown */
  dart_async.Stream<PageInterstitialShownEvent> get onInterstitialShown =>
      _onInterstitialShown.stream;
/** Broadcast stream: Fired when a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload) has been
closed. */
  dart_async.Stream<PageJavascriptDialogClosedEvent>
      get onJavascriptDialogClosed => _onJavascriptDialogClosed.stream;
/** Broadcast stream: Fired when a JavaScript initiated dialog (alert, confirm, prompt, or onbeforeunload) is about to
open. */
  dart_async.Stream<PageJavascriptDialogOpeningEvent>
      get onJavascriptDialogOpening => _onJavascriptDialogOpening.stream;
/** Broadcast stream: Fired for top level page lifecycle events such as navigation, load, paint, etc. */
  dart_async.Stream<PageLifecycleEventEvent> get onLifecycleEvent =>
      _onLifecycleEvent.stream;
/** Broadcast stream:  */
  dart_async.Stream<PageLoadEventFiredEvent> get onLoadEventFired =>
      _onLoadEventFired.stream;
/** Broadcast stream: Compressed image data requested by the `startScreencast`. */
  dart_async.Stream<PageScreencastFrameEvent> get onScreencastFrame =>
      _onScreencastFrame.stream;
/** Broadcast stream: Fired when the page with currently enabled screencast was shown or hidden `. */
  dart_async.Stream<PageScreencastVisibilityChangedEvent>
      get onScreencastVisibilityChanged =>
          _onScreencastVisibilityChanged.stream;
/** Broadcast stream: Fired when a new window is going to be opened, via window.open(), link click, form submission,
etc. */
  dart_async.Stream<PageWindowOpenEvent> get onWindowOpen =>
      _onWindowOpen.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Page.domContentEventFired',
        (json_rpc_2.Parameters params) {
      _onDomContentEventFired
          .add(new PageDomContentEventFiredEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameAttached', (json_rpc_2.Parameters params) {
      _onFrameAttached.add(new PageFrameAttachedEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameClearedScheduledNavigation',
        (json_rpc_2.Parameters params) {
      _onFrameClearedScheduledNavigation
          .add(new PageFrameClearedScheduledNavigationEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameDetached', (json_rpc_2.Parameters params) {
      _onFrameDetached.add(new PageFrameDetachedEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameNavigated', (json_rpc_2.Parameters params) {
      _onFrameNavigated.add(new PageFrameNavigatedEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameResized', (json_rpc_2.Parameters params) {
      _onFrameResized.add(new PageFrameResizedEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameScheduledNavigation',
        (json_rpc_2.Parameters params) {
      _onFrameScheduledNavigation
          .add(new PageFrameScheduledNavigationEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameStartedLoading',
        (json_rpc_2.Parameters params) {
      _onFrameStartedLoading
          .add(new PageFrameStartedLoadingEvent(params.asMap));
    });

    rpc.registerMethod('Page.frameStoppedLoading',
        (json_rpc_2.Parameters params) {
      _onFrameStoppedLoading
          .add(new PageFrameStoppedLoadingEvent(params.asMap));
    });

    rpc.registerMethod('Page.interstitialHidden',
        (json_rpc_2.Parameters params) {
      _onInterstitialHidden.add(new PageInterstitialHiddenEvent(params.asMap));
    });

    rpc.registerMethod('Page.interstitialShown',
        (json_rpc_2.Parameters params) {
      _onInterstitialShown.add(new PageInterstitialShownEvent(params.asMap));
    });

    rpc.registerMethod('Page.javascriptDialogClosed',
        (json_rpc_2.Parameters params) {
      _onJavascriptDialogClosed
          .add(new PageJavascriptDialogClosedEvent(params.asMap));
    });

    rpc.registerMethod('Page.javascriptDialogOpening',
        (json_rpc_2.Parameters params) {
      _onJavascriptDialogOpening
          .add(new PageJavascriptDialogOpeningEvent(params.asMap));
    });

    rpc.registerMethod('Page.lifecycleEvent', (json_rpc_2.Parameters params) {
      _onLifecycleEvent.add(new PageLifecycleEventEvent(params.asMap));
    });

    rpc.registerMethod('Page.loadEventFired', (json_rpc_2.Parameters params) {
      _onLoadEventFired.add(new PageLoadEventFiredEvent(params.asMap));
    });

    rpc.registerMethod('Page.screencastFrame', (json_rpc_2.Parameters params) {
      _onScreencastFrame.add(new PageScreencastFrameEvent(params.asMap));
    });

    rpc.registerMethod('Page.screencastVisibilityChanged',
        (json_rpc_2.Parameters params) {
      _onScreencastVisibilityChanged
          .add(new PageScreencastVisibilityChangedEvent(params.asMap));
    });

    rpc.registerMethod('Page.windowOpen', (json_rpc_2.Parameters params) {
      _onWindowOpen.add(new PageWindowOpenEvent(params.asMap));
    });
  }

  void _close() {
    _onDomContentEventFired.close();
    _onFrameAttached.close();
    _onFrameClearedScheduledNavigation.close();
    _onFrameDetached.close();
    _onFrameNavigated.close();
    _onFrameResized.close();
    _onFrameScheduledNavigation.close();
    _onFrameStartedLoading.close();
    _onFrameStoppedLoading.close();
    _onInterstitialHidden.close();
    _onInterstitialShown.close();
    _onJavascriptDialogClosed.close();
    _onJavascriptDialogOpening.close();
    _onLifecycleEvent.close();
    _onLoadEventFired.close();
    _onScreencastFrame.close();
    _onScreencastVisibilityChanged.close();
    _onWindowOpen.close();
  }
}

class PerformanceGetMetricsResponse {
  PerformanceGetMetricsResponse(Map map) {
    metrics = map['metrics'] is Iterable
        ? map['metrics'].map((m) => new Metric(m)).toList()
        : null;
  }

  List<Metric> metrics;
}

/// Fired on `Performance.metrics`.
class PerformanceMetricsEvent {
  PerformanceMetricsEvent(Map map) {
    metrics = map['metrics'] is Iterable
        ? map['metrics'].map((m) => new Metric(m)).toList()
        : null;
    title = map['title'];
  }

/** Current values of the metrics. */
  List<Metric> metrics;

/** Timestamp title. */
  String title;
}

class DevToolsPerformance {
  DevToolsPerformance(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<PerformanceMetricsEvent> _onMetrics =
      new dart_async.StreamController.broadcast();

/** Disable collecting and reporting metrics. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Performance.disable', params);
  }

/** Enable collecting and reporting metrics. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Performance.enable', params);
  }

/** Retrieve current values of run-time metrics. */
  dart_async.Future<PerformanceGetMetricsResponse> getMetrics() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Performance.getMetrics', params)
        .then((response) => new PerformanceGetMetricsResponse(response));
  }

/** Broadcast stream: Current values of the metrics. */
  dart_async.Stream<PerformanceMetricsEvent> get onMetrics => _onMetrics.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Performance.metrics', (json_rpc_2.Parameters params) {
      _onMetrics.add(new PerformanceMetricsEvent(params.asMap));
    });
  }

  void _close() {
    _onMetrics.close();
  }
}

/// Fired on `Security.certificateError`.
class SecurityCertificateErrorEvent {
  SecurityCertificateErrorEvent(Map map) {
    eventId = map['eventId'];
    errorType = map['errorType'];
    requestURL = map['requestURL'];
  }

/** The ID of the event. */
  int eventId;

/** The type of the error. */
  String errorType;

/** The url that was requested. */
  String requestURL;
}

/// Fired on `Security.securityStateChanged`.
class SecuritySecurityStateChangedEvent {
  SecuritySecurityStateChangedEvent(Map map) {
    securityState = map['securityState'];
    schemeIsCryptographic = map['schemeIsCryptographic'];
    explanations = map['explanations'] is Iterable
        ? map['explanations']
            .map((m) => new SecurityStateExplanation(m))
            .toList()
        : null;
    insecureContentStatus = map.containsKey('insecureContentStatus')
        ? new InsecureContentStatus(map['insecureContentStatus'])
        : null;
    summary = map['summary'];
  }

/** Security state. */
  String securityState;

/** True if the page was loaded over cryptographic transport such as HTTPS. */
  bool schemeIsCryptographic;

/** List of explanations for the security state. If the overall security state is `insecure` or
`warning`, at least one corresponding explanation should be included. */
  List<SecurityStateExplanation> explanations;

/** Information about insecure content on the page. */
  InsecureContentStatus insecureContentStatus;

/** Overrides user-visible description of the state. */
  String summary;
}

class DevToolsSecurity {
  DevToolsSecurity(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<SecurityCertificateErrorEvent>
      _onCertificateError = new dart_async.StreamController.broadcast();

  dart_async.StreamController<SecuritySecurityStateChangedEvent>
      _onSecurityStateChanged = new dart_async.StreamController.broadcast();

/** Disables tracking security state changes. */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('Security.disable', params);
  }

/** Enables tracking security state changes. */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('Security.enable', params);
  }

/** Enable/disable whether all certificate errors should be ignored. */
/** ignore:[bool] If true, all certificate errors will be ignored. */
  dart_async.Future setIgnoreCertificateErrors({bool ignore}) {
    var params = {};
    if (ignore != null) params['ignore'] = ignore;

    return _devtools.rpc
        .sendRequest('Security.setIgnoreCertificateErrors', params);
  }

/** Handles a certificate error that fired a certificateError event. */
/** eventId:[int] The ID of the event. */
/** action:[String] The action to take on the certificate error. */
  dart_async.Future handleCertificateError({int eventId, String action}) {
    var params = {};
    if (eventId != null) params['eventId'] = eventId;

    if (action != null) params['action'] = action;

    return _devtools.rpc.sendRequest('Security.handleCertificateError', params);
  }

/** Enable/disable overriding certificate errors. If enabled, all certificate error events need to
be handled by the DevTools client and should be answered with handleCertificateError commands. */
/** override:[bool] If true, certificate errors will be overridden. */
  dart_async.Future setOverrideCertificateErrors({bool override}) {
    var params = {};
    if (override != null) params['override'] = override;

    return _devtools.rpc
        .sendRequest('Security.setOverrideCertificateErrors', params);
  }

/** Broadcast stream: There is a certificate error. If overriding certificate errors is enabled, then it should be
handled with the handleCertificateError command. Note: this event does not fire if the
certificate error has been allowed internally. Only one client per target should override
certificate errors at the same time. */
  dart_async.Stream<SecurityCertificateErrorEvent> get onCertificateError =>
      _onCertificateError.stream;
/** Broadcast stream: The security state of the page changed. */
  dart_async.Stream<SecuritySecurityStateChangedEvent>
      get onSecurityStateChanged => _onSecurityStateChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Security.certificateError',
        (json_rpc_2.Parameters params) {
      _onCertificateError.add(new SecurityCertificateErrorEvent(params.asMap));
    });

    rpc.registerMethod('Security.securityStateChanged',
        (json_rpc_2.Parameters params) {
      _onSecurityStateChanged
          .add(new SecuritySecurityStateChangedEvent(params.asMap));
    });
  }

  void _close() {
    _onCertificateError.close();
    _onSecurityStateChanged.close();
  }
}

/// Fired on `ServiceWorker.workerErrorReported`.
class ServiceWorkerWorkerErrorReportedEvent {
  ServiceWorkerWorkerErrorReportedEvent(Map map) {
    errorMessage = map.containsKey('errorMessage')
        ? new ServiceWorkerErrorMessage(map['errorMessage'])
        : null;
  }

/**  */
  ServiceWorkerErrorMessage errorMessage;
}

/// Fired on `ServiceWorker.workerRegistrationUpdated`.
class ServiceWorkerWorkerRegistrationUpdatedEvent {
  ServiceWorkerWorkerRegistrationUpdatedEvent(Map map) {
    registrations = map['registrations'] is Iterable
        ? map['registrations']
            .map((m) => new ServiceWorkerRegistration(m))
            .toList()
        : null;
  }

/**  */
  List<ServiceWorkerRegistration> registrations;
}

/// Fired on `ServiceWorker.workerVersionUpdated`.
class ServiceWorkerWorkerVersionUpdatedEvent {
  ServiceWorkerWorkerVersionUpdatedEvent(Map map) {
    versions = map['versions'] is Iterable
        ? map['versions'].map((m) => new ServiceWorkerVersion(m)).toList()
        : null;
  }

/**  */
  List<ServiceWorkerVersion> versions;
}

class DevToolsServiceWorker {
  DevToolsServiceWorker(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<ServiceWorkerWorkerErrorReportedEvent>
      _onWorkerErrorReported = new dart_async.StreamController.broadcast();

  dart_async.StreamController<ServiceWorkerWorkerRegistrationUpdatedEvent>
      _onWorkerRegistrationUpdated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<ServiceWorkerWorkerVersionUpdatedEvent>
      _onWorkerVersionUpdated = new dart_async.StreamController.broadcast();

/**  */
/** origin:[String]  */
/** registrationId:[String]  */
/** data:[String]  */
  dart_async.Future deliverPushMessage(
      {String origin, String registrationId, String data}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (registrationId != null) params['registrationId'] = registrationId;

    if (data != null) params['data'] = data;

    return _devtools.rpc
        .sendRequest('ServiceWorker.deliverPushMessage', params);
  }

/**  */
  dart_async.Future disable() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.disable', params);
  }

/**  */
/** origin:[String]  */
/** registrationId:[String]  */
/** tag:[String]  */
/** lastChance:[bool]  */
  dart_async.Future dispatchSyncEvent(
      {String origin, String registrationId, String tag, bool lastChance}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (registrationId != null) params['registrationId'] = registrationId;

    if (tag != null) params['tag'] = tag;

    if (lastChance != null) params['lastChance'] = lastChance;

    return _devtools.rpc.sendRequest('ServiceWorker.dispatchSyncEvent', params);
  }

/**  */
  dart_async.Future enable() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.enable', params);
  }

/**  */
/** versionId:[String]  */
  dart_async.Future inspectWorker({String versionId}) {
    var params = {};
    if (versionId != null) params['versionId'] = versionId;

    return _devtools.rpc.sendRequest('ServiceWorker.inspectWorker', params);
  }

/**  */
/** forceUpdateOnPageLoad:[bool]  */
  dart_async.Future setForceUpdateOnPageLoad({bool forceUpdateOnPageLoad}) {
    var params = {};
    if (forceUpdateOnPageLoad != null)
      params['forceUpdateOnPageLoad'] = forceUpdateOnPageLoad;

    return _devtools.rpc
        .sendRequest('ServiceWorker.setForceUpdateOnPageLoad', params);
  }

/**  */
/** scopeURL:[String]  */
  dart_async.Future skipWaiting({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.skipWaiting', params);
  }

/**  */
/** scopeURL:[String]  */
  dart_async.Future startWorker({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.startWorker', params);
  }

/**  */
  dart_async.Future stopAllWorkers() {
    var params = {};
    return _devtools.rpc.sendRequest('ServiceWorker.stopAllWorkers', params);
  }

/**  */
/** versionId:[String]  */
  dart_async.Future stopWorker({String versionId}) {
    var params = {};
    if (versionId != null) params['versionId'] = versionId;

    return _devtools.rpc.sendRequest('ServiceWorker.stopWorker', params);
  }

/**  */
/** scopeURL:[String]  */
  dart_async.Future unregister({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc.sendRequest('ServiceWorker.unregister', params);
  }

/**  */
/** scopeURL:[String]  */
  dart_async.Future updateRegistration({String scopeURL}) {
    var params = {};
    if (scopeURL != null) params['scopeURL'] = scopeURL;

    return _devtools.rpc
        .sendRequest('ServiceWorker.updateRegistration', params);
  }

/** Broadcast stream:  */
  dart_async.Stream<ServiceWorkerWorkerErrorReportedEvent>
      get onWorkerErrorReported => _onWorkerErrorReported.stream;
/** Broadcast stream:  */
  dart_async.Stream<ServiceWorkerWorkerRegistrationUpdatedEvent>
      get onWorkerRegistrationUpdated => _onWorkerRegistrationUpdated.stream;
/** Broadcast stream:  */
  dart_async.Stream<ServiceWorkerWorkerVersionUpdatedEvent>
      get onWorkerVersionUpdated => _onWorkerVersionUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('ServiceWorker.workerErrorReported',
        (json_rpc_2.Parameters params) {
      _onWorkerErrorReported
          .add(new ServiceWorkerWorkerErrorReportedEvent(params.asMap));
    });

    rpc.registerMethod('ServiceWorker.workerRegistrationUpdated',
        (json_rpc_2.Parameters params) {
      _onWorkerRegistrationUpdated
          .add(new ServiceWorkerWorkerRegistrationUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('ServiceWorker.workerVersionUpdated',
        (json_rpc_2.Parameters params) {
      _onWorkerVersionUpdated
          .add(new ServiceWorkerWorkerVersionUpdatedEvent(params.asMap));
    });
  }

  void _close() {
    _onWorkerErrorReported.close();
    _onWorkerRegistrationUpdated.close();
    _onWorkerVersionUpdated.close();
  }
}

class StorageGetUsageAndQuotaResponse {
  StorageGetUsageAndQuotaResponse(Map map) {
    usage = map['usage'];
    quota = map['quota'];
    usageBreakdown = map['usageBreakdown'] is Iterable
        ? map['usageBreakdown'].map((m) => new UsageForType(m)).toList()
        : null;
  }

  num usage;

  num quota;

  List<UsageForType> usageBreakdown;
}

/// Fired on `Storage.cacheStorageContentUpdated`.
class StorageCacheStorageContentUpdatedEvent {
  StorageCacheStorageContentUpdatedEvent(Map map) {
    origin = map['origin'];
    cacheName = map['cacheName'];
  }

/** Origin to update. */
  String origin;

/** Name of cache in origin. */
  String cacheName;
}

/// Fired on `Storage.cacheStorageListUpdated`.
class StorageCacheStorageListUpdatedEvent {
  StorageCacheStorageListUpdatedEvent(Map map) {
    origin = map['origin'];
  }

/** Origin to update. */
  String origin;
}

/// Fired on `Storage.indexedDBContentUpdated`.
class StorageIndexedDBContentUpdatedEvent {
  StorageIndexedDBContentUpdatedEvent(Map map) {
    origin = map['origin'];
    databaseName = map['databaseName'];
    objectStoreName = map['objectStoreName'];
  }

/** Origin to update. */
  String origin;

/** Database to update. */
  String databaseName;

/** ObjectStore to update. */
  String objectStoreName;
}

/// Fired on `Storage.indexedDBListUpdated`.
class StorageIndexedDBListUpdatedEvent {
  StorageIndexedDBListUpdatedEvent(Map map) {
    origin = map['origin'];
  }

/** Origin to update. */
  String origin;
}

class DevToolsStorage {
  DevToolsStorage(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<StorageCacheStorageContentUpdatedEvent>
      _onCacheStorageContentUpdated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<StorageCacheStorageListUpdatedEvent>
      _onCacheStorageListUpdated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<StorageIndexedDBContentUpdatedEvent>
      _onIndexedDBContentUpdated = new dart_async.StreamController.broadcast();

  dart_async.StreamController<StorageIndexedDBListUpdatedEvent>
      _onIndexedDBListUpdated = new dart_async.StreamController.broadcast();

/** Clears storage for origin. */
/** origin:[String] Security origin. */
/** storageTypes:[String] Comma separated origin names. */
  dart_async.Future clearDataForOrigin({String origin, String storageTypes}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    if (storageTypes != null) params['storageTypes'] = storageTypes;

    return _devtools.rpc.sendRequest('Storage.clearDataForOrigin', params);
  }

/** Returns usage and quota in bytes. */
/** origin:[String] Security origin. */
  dart_async.Future<StorageGetUsageAndQuotaResponse> getUsageAndQuota(
      {String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.getUsageAndQuota', params)
        .then((response) => new StorageGetUsageAndQuotaResponse(response));
  }

/** Registers origin to be notified when an update occurs to its cache storage list. */
/** origin:[String] Security origin. */
  dart_async.Future trackCacheStorageForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.trackCacheStorageForOrigin', params);
  }

/** Registers origin to be notified when an update occurs to its IndexedDB. */
/** origin:[String] Security origin. */
  dart_async.Future trackIndexedDBForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc.sendRequest('Storage.trackIndexedDBForOrigin', params);
  }

/** Unregisters origin from receiving notifications for cache storage. */
/** origin:[String] Security origin. */
  dart_async.Future untrackCacheStorageForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.untrackCacheStorageForOrigin', params);
  }

/** Unregisters origin from receiving notifications for IndexedDB. */
/** origin:[String] Security origin. */
  dart_async.Future untrackIndexedDBForOrigin({String origin}) {
    var params = {};
    if (origin != null) params['origin'] = origin;

    return _devtools.rpc
        .sendRequest('Storage.untrackIndexedDBForOrigin', params);
  }

/** Broadcast stream: A cache's contents have been modified. */
  dart_async.Stream<StorageCacheStorageContentUpdatedEvent>
      get onCacheStorageContentUpdated => _onCacheStorageContentUpdated.stream;
/** Broadcast stream: A cache has been added/deleted. */
  dart_async.Stream<StorageCacheStorageListUpdatedEvent>
      get onCacheStorageListUpdated => _onCacheStorageListUpdated.stream;
/** Broadcast stream: The origin's IndexedDB object store has been modified. */
  dart_async.Stream<StorageIndexedDBContentUpdatedEvent>
      get onIndexedDBContentUpdated => _onIndexedDBContentUpdated.stream;
/** Broadcast stream: The origin's IndexedDB database list has been modified. */
  dart_async.Stream<StorageIndexedDBListUpdatedEvent>
      get onIndexedDBListUpdated => _onIndexedDBListUpdated.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Storage.cacheStorageContentUpdated',
        (json_rpc_2.Parameters params) {
      _onCacheStorageContentUpdated
          .add(new StorageCacheStorageContentUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('Storage.cacheStorageListUpdated',
        (json_rpc_2.Parameters params) {
      _onCacheStorageListUpdated
          .add(new StorageCacheStorageListUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('Storage.indexedDBContentUpdated',
        (json_rpc_2.Parameters params) {
      _onIndexedDBContentUpdated
          .add(new StorageIndexedDBContentUpdatedEvent(params.asMap));
    });

    rpc.registerMethod('Storage.indexedDBListUpdated',
        (json_rpc_2.Parameters params) {
      _onIndexedDBListUpdated
          .add(new StorageIndexedDBListUpdatedEvent(params.asMap));
    });
  }

  void _close() {
    _onCacheStorageContentUpdated.close();
    _onCacheStorageListUpdated.close();
    _onIndexedDBContentUpdated.close();
    _onIndexedDBListUpdated.close();
  }
}

class SystemInfoGetInfoResponse {
  SystemInfoGetInfoResponse(Map map) {
    gpu = map.containsKey('gpu') ? new GPUInfo(map['gpu']) : null;
    modelName = map['modelName'];
    modelVersion = map['modelVersion'];
    commandLine = map['commandLine'];
  }

  GPUInfo gpu;

  String modelName;

  String modelVersion;

  String commandLine;
}

class DevToolsSystemInfo {
  DevToolsSystemInfo(this._devtools);

  final ChromeDevToolsBase _devtools;

/** Returns information about the system. */
  dart_async.Future<SystemInfoGetInfoResponse> getInfo() {
    var params = {};
    return _devtools.rpc
        .sendRequest('SystemInfo.getInfo', params)
        .then((response) => new SystemInfoGetInfoResponse(response));
  }

  void listen(json_rpc_2.Peer rpc) {}
  void _close() {}
}

class TargetAttachToTargetResponse {
  TargetAttachToTargetResponse(Map map) {
    sessionId = map['sessionId'];
  }

  String sessionId;
}

class TargetCloseTargetResponse {
  TargetCloseTargetResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

class TargetCreateBrowserContextResponse {
  TargetCreateBrowserContextResponse(Map map) {
    browserContextId = map['browserContextId'];
  }

  String browserContextId;
}

class TargetCreateTargetResponse {
  TargetCreateTargetResponse(Map map) {
    targetId = map['targetId'];
  }

  String targetId;
}

class TargetDisposeBrowserContextResponse {
  TargetDisposeBrowserContextResponse(Map map) {
    success = map['success'];
  }

  bool success;
}

class TargetGetTargetInfoResponse {
  TargetGetTargetInfoResponse(Map map) {
    targetInfo = map.containsKey('targetInfo')
        ? new TargetInfo(map['targetInfo'])
        : null;
  }

  TargetInfo targetInfo;
}

class TargetGetTargetsResponse {
  TargetGetTargetsResponse(Map map) {
    targetInfos = map['targetInfos'] is Iterable
        ? map['targetInfos'].map((m) => new TargetInfo(m)).toList()
        : null;
  }

  List<TargetInfo> targetInfos;
}

/// Fired on `Target.attachedToTarget`.
class TargetAttachedToTargetEvent {
  TargetAttachedToTargetEvent(Map map) {
    sessionId = map['sessionId'];
    targetInfo = map.containsKey('targetInfo')
        ? new TargetInfo(map['targetInfo'])
        : null;
    waitingForDebugger = map['waitingForDebugger'];
  }

/** Identifier assigned to the session used to send/receive messages. */
  String sessionId;

/**  */
  TargetInfo targetInfo;

/**  */
  bool waitingForDebugger;
}

/// Fired on `Target.detachedFromTarget`.
class TargetDetachedFromTargetEvent {
  TargetDetachedFromTargetEvent(Map map) {
    sessionId = map['sessionId'];
    targetId = map['targetId'];
  }

/** Detached session identifier. */
  String sessionId;

/** Deprecated. */
  String targetId;
}

/// Fired on `Target.receivedMessageFromTarget`.
class TargetReceivedMessageFromTargetEvent {
  TargetReceivedMessageFromTargetEvent(Map map) {
    sessionId = map['sessionId'];
    message = map['message'];
    targetId = map['targetId'];
  }

/** Identifier of a session which sends a message. */
  String sessionId;

/**  */
  String message;

/** Deprecated. */
  String targetId;
}

/// Fired on `Target.targetCreated`.
class TargetTargetCreatedEvent {
  TargetTargetCreatedEvent(Map map) {
    targetInfo = map.containsKey('targetInfo')
        ? new TargetInfo(map['targetInfo'])
        : null;
  }

/**  */
  TargetInfo targetInfo;
}

/// Fired on `Target.targetDestroyed`.
class TargetTargetDestroyedEvent {
  TargetTargetDestroyedEvent(Map map) {
    targetId = map['targetId'];
  }

/**  */
  String targetId;
}

/// Fired on `Target.targetInfoChanged`.
class TargetTargetInfoChangedEvent {
  TargetTargetInfoChangedEvent(Map map) {
    targetInfo = map.containsKey('targetInfo')
        ? new TargetInfo(map['targetInfo'])
        : null;
  }

/**  */
  TargetInfo targetInfo;
}

class DevToolsTarget {
  DevToolsTarget(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<TargetAttachedToTargetEvent> _onAttachedToTarget =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TargetDetachedFromTargetEvent>
      _onDetachedFromTarget = new dart_async.StreamController.broadcast();

  dart_async.StreamController<TargetReceivedMessageFromTargetEvent>
      _onReceivedMessageFromTarget =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TargetTargetCreatedEvent> _onTargetCreated =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TargetTargetDestroyedEvent> _onTargetDestroyed =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TargetTargetInfoChangedEvent>
      _onTargetInfoChanged = new dart_async.StreamController.broadcast();

/** Activates (focuses) the target. */
/** targetId:[String]  */
  dart_async.Future activateTarget({String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.activateTarget', params);
  }

/** Attaches to the target with given id. */
/** targetId:[String]  */
  dart_async.Future<TargetAttachToTargetResponse> attachToTarget(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.attachToTarget', params)
        .then((response) => new TargetAttachToTargetResponse(response));
  }

/** Closes the target. If the target is a page that gets closed too. */
/** targetId:[String]  */
  dart_async.Future<TargetCloseTargetResponse> closeTarget({String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.closeTarget', params)
        .then((response) => new TargetCloseTargetResponse(response));
  }

/** Creates a new empty BrowserContext. Similar to an incognito profile but you can have more than
one. */
  dart_async.Future<TargetCreateBrowserContextResponse> createBrowserContext() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Target.createBrowserContext', params)
        .then((response) => new TargetCreateBrowserContextResponse(response));
  }

/** Creates a new page. */
/** url:[String] The initial URL the page will be navigated to. */
/** width:[int] Frame width in DIP (headless chrome only). */
/** height:[int] Frame height in DIP (headless chrome only). */
/** browserContextId:[String] The browser context to create the page in (headless chrome only). */
/** enableBeginFrameControl:[bool] Whether BeginFrames for this target will be controlled via DevTools (headless chrome only,
not supported on MacOS yet, false by default). */
  dart_async.Future<TargetCreateTargetResponse> createTarget(
      {String url,
      int width,
      int height,
      String browserContextId,
      bool enableBeginFrameControl}) {
    var params = {};
    if (url != null) params['url'] = url;

    if (width != null) params['width'] = width;

    if (height != null) params['height'] = height;

    if (browserContextId != null) params['browserContextId'] = browserContextId;

    if (enableBeginFrameControl != null)
      params['enableBeginFrameControl'] = enableBeginFrameControl;

    return _devtools.rpc
        .sendRequest('Target.createTarget', params)
        .then((response) => new TargetCreateTargetResponse(response));
  }

/** Detaches session with given id. */
/** sessionId:[String] Session to detach. */
/** targetId:[String] Deprecated. */
  dart_async.Future detachFromTarget({String sessionId, String targetId}) {
    var params = {};
    if (sessionId != null) params['sessionId'] = sessionId;

    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.detachFromTarget', params);
  }

/** Deletes a BrowserContext, will fail of any open page uses it. */
/** browserContextId:[String]  */
  dart_async.Future<TargetDisposeBrowserContextResponse> disposeBrowserContext(
      {String browserContextId}) {
    var params = {};
    if (browserContextId != null) params['browserContextId'] = browserContextId;

    return _devtools.rpc
        .sendRequest('Target.disposeBrowserContext', params)
        .then((response) => new TargetDisposeBrowserContextResponse(response));
  }

/** Returns information about a target. */
/** targetId:[String]  */
  dart_async.Future<TargetGetTargetInfoResponse> getTargetInfo(
      {String targetId}) {
    var params = {};
    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc
        .sendRequest('Target.getTargetInfo', params)
        .then((response) => new TargetGetTargetInfoResponse(response));
  }

/** Retrieves a list of available targets. */
  dart_async.Future<TargetGetTargetsResponse> getTargets() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Target.getTargets', params)
        .then((response) => new TargetGetTargetsResponse(response));
  }

/** Sends protocol message over session with given id. */
/** message:[String]  */
/** sessionId:[String] Identifier of the session. */
/** targetId:[String] Deprecated. */
  dart_async.Future sendMessageToTarget(
      {String message, String sessionId, String targetId}) {
    var params = {};
    if (message != null) params['message'] = message;

    if (sessionId != null) params['sessionId'] = sessionId;

    if (targetId != null) params['targetId'] = targetId;

    return _devtools.rpc.sendRequest('Target.sendMessageToTarget', params);
  }

/** Controls whether to automatically attach to new targets which are considered to be related to
this one. When turned on, attaches to all existing related targets as well. When turned off,
automatically detaches from all currently attached targets. */
/** autoAttach:[bool] Whether to auto-attach to related targets. */
/** waitForDebuggerOnStart:[bool] Whether to pause new targets when attaching to them. Use `Runtime.runIfWaitingForDebugger`
to run paused targets. */
  dart_async.Future setAutoAttach(
      {bool autoAttach, bool waitForDebuggerOnStart}) {
    var params = {};
    if (autoAttach != null) params['autoAttach'] = autoAttach;

    if (waitForDebuggerOnStart != null)
      params['waitForDebuggerOnStart'] = waitForDebuggerOnStart;

    return _devtools.rpc.sendRequest('Target.setAutoAttach', params);
  }

/** Controls whether to discover available targets and notify via
`targetCreated/targetInfoChanged/targetDestroyed` events. */
/** discover:[bool] Whether to discover available targets. */
  dart_async.Future setDiscoverTargets({bool discover}) {
    var params = {};
    if (discover != null) params['discover'] = discover;

    return _devtools.rpc.sendRequest('Target.setDiscoverTargets', params);
  }

/** Enables target discovery for the specified locations, when `setDiscoverTargets` was set to
`true`. */
/** locations:[List] List of remote locations. */
  dart_async.Future setRemoteLocations({List<RemoteLocation> locations}) {
    var params = {};
    if (locations != null) params['locations'] = locations;

    return _devtools.rpc.sendRequest('Target.setRemoteLocations', params);
  }

/** Broadcast stream: Issued when attached to target because of auto-attach or `attachToTarget` command. */
  dart_async.Stream<TargetAttachedToTargetEvent> get onAttachedToTarget =>
      _onAttachedToTarget.stream;
/** Broadcast stream: Issued when detached from target for any reason (including `detachFromTarget` command). Can be
issued multiple times per target if multiple sessions have been attached to it. */
  dart_async.Stream<TargetDetachedFromTargetEvent> get onDetachedFromTarget =>
      _onDetachedFromTarget.stream;
/** Broadcast stream: Notifies about a new protocol message received from the session (as reported in
`attachedToTarget` event). */
  dart_async.Stream<TargetReceivedMessageFromTargetEvent>
      get onReceivedMessageFromTarget => _onReceivedMessageFromTarget.stream;
/** Broadcast stream: Issued when a possible inspection target is created. */
  dart_async.Stream<TargetTargetCreatedEvent> get onTargetCreated =>
      _onTargetCreated.stream;
/** Broadcast stream: Issued when a target is destroyed. */
  dart_async.Stream<TargetTargetDestroyedEvent> get onTargetDestroyed =>
      _onTargetDestroyed.stream;
/** Broadcast stream: Issued when some information about a target has changed. This only happens between
`targetCreated` and `targetDestroyed`. */
  dart_async.Stream<TargetTargetInfoChangedEvent> get onTargetInfoChanged =>
      _onTargetInfoChanged.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Target.attachedToTarget',
        (json_rpc_2.Parameters params) {
      _onAttachedToTarget.add(new TargetAttachedToTargetEvent(params.asMap));
    });

    rpc.registerMethod('Target.detachedFromTarget',
        (json_rpc_2.Parameters params) {
      _onDetachedFromTarget
          .add(new TargetDetachedFromTargetEvent(params.asMap));
    });

    rpc.registerMethod('Target.receivedMessageFromTarget',
        (json_rpc_2.Parameters params) {
      _onReceivedMessageFromTarget
          .add(new TargetReceivedMessageFromTargetEvent(params.asMap));
    });

    rpc.registerMethod('Target.targetCreated', (json_rpc_2.Parameters params) {
      _onTargetCreated.add(new TargetTargetCreatedEvent(params.asMap));
    });

    rpc.registerMethod('Target.targetDestroyed',
        (json_rpc_2.Parameters params) {
      _onTargetDestroyed.add(new TargetTargetDestroyedEvent(params.asMap));
    });

    rpc.registerMethod('Target.targetInfoChanged',
        (json_rpc_2.Parameters params) {
      _onTargetInfoChanged.add(new TargetTargetInfoChangedEvent(params.asMap));
    });
  }

  void _close() {
    _onAttachedToTarget.close();
    _onDetachedFromTarget.close();
    _onReceivedMessageFromTarget.close();
    _onTargetCreated.close();
    _onTargetDestroyed.close();
    _onTargetInfoChanged.close();
  }
}

/// Fired on `Tethering.accepted`.
class TetheringAcceptedEvent {
  TetheringAcceptedEvent(Map map) {
    port = map['port'];
    connectionId = map['connectionId'];
  }

/** Port number that was successfully bound. */
  int port;

/** Connection id to be used. */
  String connectionId;
}

class DevToolsTethering {
  DevToolsTethering(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<TetheringAcceptedEvent> _onAccepted =
      new dart_async.StreamController.broadcast();

/** Request browser port binding. */
/** port:[int] Port number to bind. */
  dart_async.Future bind({int port}) {
    var params = {};
    if (port != null) params['port'] = port;

    return _devtools.rpc.sendRequest('Tethering.bind', params);
  }

/** Request browser port unbinding. */
/** port:[int] Port number to unbind. */
  dart_async.Future unbind({int port}) {
    var params = {};
    if (port != null) params['port'] = port;

    return _devtools.rpc.sendRequest('Tethering.unbind', params);
  }

/** Broadcast stream: Informs that port was successfully bound and got a specified connection id. */
  dart_async.Stream<TetheringAcceptedEvent> get onAccepted =>
      _onAccepted.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Tethering.accepted', (json_rpc_2.Parameters params) {
      _onAccepted.add(new TetheringAcceptedEvent(params.asMap));
    });
  }

  void _close() {
    _onAccepted.close();
  }
}

class TracingGetCategoriesResponse {
  TracingGetCategoriesResponse(Map map) {
    categories = map['categories'];
  }

  List categories;
}

class TracingRequestMemoryDumpResponse {
  TracingRequestMemoryDumpResponse(Map map) {
    dumpGuid = map['dumpGuid'];
    success = map['success'];
  }

  String dumpGuid;

  bool success;
}

/// Fired on `Tracing.bufferUsage`.
class TracingBufferUsageEvent {
  TracingBufferUsageEvent(Map map) {
    percentFull = map['percentFull'];
    eventCount = map['eventCount'];
    value = map['value'];
  }

/** A number in range [0..1] that indicates the used size of event buffer as a fraction of its
total size. */
  num percentFull;

/** An approximate number of events in the trace log. */
  num eventCount;

/** A number in range [0..1] that indicates the used size of event buffer as a fraction of its
total size. */
  num value;
}

/// Fired on `Tracing.dataCollected`.
class TracingDataCollectedEvent {
  TracingDataCollectedEvent(Map map) {
    value = map['value'];
  }

/**  */
  List value;
}

/// Fired on `Tracing.tracingComplete`.
class TracingTracingCompleteEvent {
  TracingTracingCompleteEvent(Map map) {
    stream = map['stream'];
    streamCompression = map['streamCompression'];
  }

/** A handle of the stream that holds resulting trace data. */
  String stream;

/** Compression format of returned stream. */
  String streamCompression;
}

class DevToolsTracing {
  DevToolsTracing(this._devtools);

  final ChromeDevToolsBase _devtools;

  dart_async.StreamController<TracingBufferUsageEvent> _onBufferUsage =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TracingDataCollectedEvent> _onDataCollected =
      new dart_async.StreamController.broadcast();

  dart_async.StreamController<TracingTracingCompleteEvent> _onTracingComplete =
      new dart_async.StreamController.broadcast();

/** Stop trace events collection. */
  dart_async.Future end() {
    var params = {};
    return _devtools.rpc.sendRequest('Tracing.end', params);
  }

/** Gets supported tracing categories. */
  dart_async.Future<TracingGetCategoriesResponse> getCategories() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Tracing.getCategories', params)
        .then((response) => new TracingGetCategoriesResponse(response));
  }

/** Record a clock sync marker in the trace. */
/** syncId:[String] The ID of this clock sync marker */
  dart_async.Future recordClockSyncMarker({String syncId}) {
    var params = {};
    if (syncId != null) params['syncId'] = syncId;

    return _devtools.rpc.sendRequest('Tracing.recordClockSyncMarker', params);
  }

/** Request a global memory dump. */
  dart_async.Future<TracingRequestMemoryDumpResponse> requestMemoryDump() {
    var params = {};
    return _devtools.rpc
        .sendRequest('Tracing.requestMemoryDump', params)
        .then((response) => new TracingRequestMemoryDumpResponse(response));
  }

/** Start trace events collection. */
/** categories:[String] Category/tag filter */
/** options:[String] Tracing options */
/** bufferUsageReportingInterval:[num] If set, the agent will issue bufferUsage events at this interval, specified in milliseconds */
/** transferMode:[String] Whether to report trace events as series of dataCollected events or to save trace to a
stream (defaults to `ReportEvents`). */
/** streamCompression:[String] Compression format to use. This only applies when using `ReturnAsStream`
transfer mode (defaults to `none`) */
/** traceConfig:[TraceConfig]  */
  dart_async.Future start(
      {String categories,
      String options,
      num bufferUsageReportingInterval,
      String transferMode,
      String streamCompression,
      TraceConfig traceConfig}) {
    var params = {};
    if (categories != null) params['categories'] = categories;

    if (options != null) params['options'] = options;

    if (bufferUsageReportingInterval != null)
      params['bufferUsageReportingInterval'] = bufferUsageReportingInterval;

    if (transferMode != null) params['transferMode'] = transferMode;

    if (streamCompression != null)
      params['streamCompression'] = streamCompression;

    if (traceConfig != null) params['traceConfig'] = traceConfig;

    return _devtools.rpc.sendRequest('Tracing.start', params);
  }

/** Broadcast stream:  */
  dart_async.Stream<TracingBufferUsageEvent> get onBufferUsage =>
      _onBufferUsage.stream;
/** Broadcast stream: Contains an bucket of collected trace events. When tracing is stopped collected events will be
send as a sequence of dataCollected events followed by tracingComplete event. */
  dart_async.Stream<TracingDataCollectedEvent> get onDataCollected =>
      _onDataCollected.stream;
/** Broadcast stream: Signals that tracing is stopped and there is no trace buffers pending flush, all data were
delivered via dataCollected events. */
  dart_async.Stream<TracingTracingCompleteEvent> get onTracingComplete =>
      _onTracingComplete.stream;
  void listen(json_rpc_2.Peer rpc) {
    rpc.registerMethod('Tracing.bufferUsage', (json_rpc_2.Parameters params) {
      _onBufferUsage.add(new TracingBufferUsageEvent(params.asMap));
    });

    rpc.registerMethod('Tracing.dataCollected', (json_rpc_2.Parameters params) {
      _onDataCollected.add(new TracingDataCollectedEvent(params.asMap));
    });

    rpc.registerMethod('Tracing.tracingComplete',
        (json_rpc_2.Parameters params) {
      _onTracingComplete.add(new TracingTracingCompleteEvent(params.asMap));
    });
  }

  void _close() {
    _onBufferUsage.close();
    _onDataCollected.close();
    _onTracingComplete.close();
  }
}

abstract class ChromeDevToolsBase {
  ChromeDevToolsBase() {
    _devToolsConsole = new DevToolsConsole(this);
    _devToolsDebugger = new DevToolsDebugger(this);
    _devToolsHeapProfiler = new DevToolsHeapProfiler(this);
    _devToolsProfiler = new DevToolsProfiler(this);
    _devToolsRuntime = new DevToolsRuntime(this);
    _devToolsSchema = new DevToolsSchema(this);
    _devToolsAccessibility = new DevToolsAccessibility(this);
    _devToolsAnimation = new DevToolsAnimation(this);
    _devToolsApplicationCache = new DevToolsApplicationCache(this);
    _devToolsAudits = new DevToolsAudits(this);
    _devToolsBrowser = new DevToolsBrowser(this);
    _devToolsCSS = new DevToolsCSS(this);
    _devToolsCacheStorage = new DevToolsCacheStorage(this);
    _devToolsDOM = new DevToolsDOM(this);
    _devToolsDOMDebugger = new DevToolsDOMDebugger(this);
    _devToolsDOMSnapshot = new DevToolsDOMSnapshot(this);
    _devToolsDOMStorage = new DevToolsDOMStorage(this);
    _devToolsDatabase = new DevToolsDatabase(this);
    _devToolsDeviceOrientation = new DevToolsDeviceOrientation(this);
    _devToolsEmulation = new DevToolsEmulation(this);
    _devToolsHeadlessExperimental = new DevToolsHeadlessExperimental(this);
    _devToolsIO = new DevToolsIO(this);
    _devToolsIndexedDB = new DevToolsIndexedDB(this);
    _devToolsInput = new DevToolsInput(this);
    _devToolsInspector = new DevToolsInspector(this);
    _devToolsLayerTree = new DevToolsLayerTree(this);
    _devToolsLog = new DevToolsLog(this);
    _devToolsMemory = new DevToolsMemory(this);
    _devToolsNetwork = new DevToolsNetwork(this);
    _devToolsOverlay = new DevToolsOverlay(this);
    _devToolsPage = new DevToolsPage(this);
    _devToolsPerformance = new DevToolsPerformance(this);
    _devToolsSecurity = new DevToolsSecurity(this);
    _devToolsServiceWorker = new DevToolsServiceWorker(this);
    _devToolsStorage = new DevToolsStorage(this);
    _devToolsSystemInfo = new DevToolsSystemInfo(this);
    _devToolsTarget = new DevToolsTarget(this);
    _devToolsTethering = new DevToolsTethering(this);
    _devToolsTracing = new DevToolsTracing(this);
  }

  DevToolsConsole _devToolsConsole;

  DevToolsDebugger _devToolsDebugger;

  DevToolsHeapProfiler _devToolsHeapProfiler;

  DevToolsProfiler _devToolsProfiler;

  DevToolsRuntime _devToolsRuntime;

  DevToolsSchema _devToolsSchema;

  DevToolsAccessibility _devToolsAccessibility;

  DevToolsAnimation _devToolsAnimation;

  DevToolsApplicationCache _devToolsApplicationCache;

  DevToolsAudits _devToolsAudits;

  DevToolsBrowser _devToolsBrowser;

  DevToolsCSS _devToolsCSS;

  DevToolsCacheStorage _devToolsCacheStorage;

  DevToolsDOM _devToolsDOM;

  DevToolsDOMDebugger _devToolsDOMDebugger;

  DevToolsDOMSnapshot _devToolsDOMSnapshot;

  DevToolsDOMStorage _devToolsDOMStorage;

  DevToolsDatabase _devToolsDatabase;

  DevToolsDeviceOrientation _devToolsDeviceOrientation;

  DevToolsEmulation _devToolsEmulation;

  DevToolsHeadlessExperimental _devToolsHeadlessExperimental;

  DevToolsIO _devToolsIO;

  DevToolsIndexedDB _devToolsIndexedDB;

  DevToolsInput _devToolsInput;

  DevToolsInspector _devToolsInspector;

  DevToolsLayerTree _devToolsLayerTree;

  DevToolsLog _devToolsLog;

  DevToolsMemory _devToolsMemory;

  DevToolsNetwork _devToolsNetwork;

  DevToolsOverlay _devToolsOverlay;

  DevToolsPage _devToolsPage;

  DevToolsPerformance _devToolsPerformance;

  DevToolsSecurity _devToolsSecurity;

  DevToolsServiceWorker _devToolsServiceWorker;

  DevToolsStorage _devToolsStorage;

  DevToolsSystemInfo _devToolsSystemInfo;

  DevToolsTarget _devToolsTarget;

  DevToolsTethering _devToolsTethering;

  DevToolsTracing _devToolsTracing;

  void listen() {
    _devToolsConsole.listen(rpc);
    _devToolsDebugger.listen(rpc);
    _devToolsHeapProfiler.listen(rpc);
    _devToolsProfiler.listen(rpc);
    _devToolsRuntime.listen(rpc);
    _devToolsSchema.listen(rpc);
    _devToolsAccessibility.listen(rpc);
    _devToolsAnimation.listen(rpc);
    _devToolsApplicationCache.listen(rpc);
    _devToolsAudits.listen(rpc);
    _devToolsBrowser.listen(rpc);
    _devToolsCSS.listen(rpc);
    _devToolsCacheStorage.listen(rpc);
    _devToolsDOM.listen(rpc);
    _devToolsDOMDebugger.listen(rpc);
    _devToolsDOMSnapshot.listen(rpc);
    _devToolsDOMStorage.listen(rpc);
    _devToolsDatabase.listen(rpc);
    _devToolsDeviceOrientation.listen(rpc);
    _devToolsEmulation.listen(rpc);
    _devToolsHeadlessExperimental.listen(rpc);
    _devToolsIO.listen(rpc);
    _devToolsIndexedDB.listen(rpc);
    _devToolsInput.listen(rpc);
    _devToolsInspector.listen(rpc);
    _devToolsLayerTree.listen(rpc);
    _devToolsLog.listen(rpc);
    _devToolsMemory.listen(rpc);
    _devToolsNetwork.listen(rpc);
    _devToolsOverlay.listen(rpc);
    _devToolsPage.listen(rpc);
    _devToolsPerformance.listen(rpc);
    _devToolsSecurity.listen(rpc);
    _devToolsServiceWorker.listen(rpc);
    _devToolsStorage.listen(rpc);
    _devToolsSystemInfo.listen(rpc);
    _devToolsTarget.listen(rpc);
    _devToolsTethering.listen(rpc);
    _devToolsTracing.listen(rpc);
  }

  dart_async.Future close() async {
    _devToolsConsole._close();
    _devToolsDebugger._close();
    _devToolsHeapProfiler._close();
    _devToolsProfiler._close();
    _devToolsRuntime._close();
    _devToolsSchema._close();
    _devToolsAccessibility._close();
    _devToolsAnimation._close();
    _devToolsApplicationCache._close();
    _devToolsAudits._close();
    _devToolsBrowser._close();
    _devToolsCSS._close();
    _devToolsCacheStorage._close();
    _devToolsDOM._close();
    _devToolsDOMDebugger._close();
    _devToolsDOMSnapshot._close();
    _devToolsDOMStorage._close();
    _devToolsDatabase._close();
    _devToolsDeviceOrientation._close();
    _devToolsEmulation._close();
    _devToolsHeadlessExperimental._close();
    _devToolsIO._close();
    _devToolsIndexedDB._close();
    _devToolsInput._close();
    _devToolsInspector._close();
    _devToolsLayerTree._close();
    _devToolsLog._close();
    _devToolsMemory._close();
    _devToolsNetwork._close();
    _devToolsOverlay._close();
    _devToolsPage._close();
    _devToolsPerformance._close();
    _devToolsSecurity._close();
    _devToolsServiceWorker._close();
    _devToolsStorage._close();
    _devToolsSystemInfo._close();
    _devToolsTarget._close();
    _devToolsTethering._close();
    _devToolsTracing._close();
  }

  DevToolsConsole get console {
    return _devToolsConsole;
  }

  DevToolsDebugger get debugger {
    return _devToolsDebugger;
  }

  DevToolsHeapProfiler get heapProfiler {
    return _devToolsHeapProfiler;
  }

  DevToolsProfiler get profiler {
    return _devToolsProfiler;
  }

  DevToolsRuntime get runtime {
    return _devToolsRuntime;
  }

  DevToolsSchema get schema {
    return _devToolsSchema;
  }

  DevToolsAccessibility get accessibility {
    return _devToolsAccessibility;
  }

  DevToolsAnimation get animation {
    return _devToolsAnimation;
  }

  DevToolsApplicationCache get applicationCache {
    return _devToolsApplicationCache;
  }

  DevToolsAudits get audits {
    return _devToolsAudits;
  }

  DevToolsBrowser get browser {
    return _devToolsBrowser;
  }

  DevToolsCSS get css {
    return _devToolsCSS;
  }

  DevToolsCacheStorage get cacheStorage {
    return _devToolsCacheStorage;
  }

  DevToolsDOM get dom {
    return _devToolsDOM;
  }

  DevToolsDOMDebugger get domDebugger {
    return _devToolsDOMDebugger;
  }

  DevToolsDOMSnapshot get domSnapshot {
    return _devToolsDOMSnapshot;
  }

  DevToolsDOMStorage get domStorage {
    return _devToolsDOMStorage;
  }

  DevToolsDatabase get database {
    return _devToolsDatabase;
  }

  DevToolsDeviceOrientation get deviceOrientation {
    return _devToolsDeviceOrientation;
  }

  DevToolsEmulation get emulation {
    return _devToolsEmulation;
  }

  DevToolsHeadlessExperimental get headlessExperimental {
    return _devToolsHeadlessExperimental;
  }

  DevToolsIO get io {
    return _devToolsIO;
  }

  DevToolsIndexedDB get indexedDB {
    return _devToolsIndexedDB;
  }

  DevToolsInput get input {
    return _devToolsInput;
  }

  DevToolsInspector get inspector {
    return _devToolsInspector;
  }

  DevToolsLayerTree get layerTree {
    return _devToolsLayerTree;
  }

  DevToolsLog get log {
    return _devToolsLog;
  }

  DevToolsMemory get memory {
    return _devToolsMemory;
  }

  DevToolsNetwork get network {
    return _devToolsNetwork;
  }

  DevToolsOverlay get overlay {
    return _devToolsOverlay;
  }

  DevToolsPage get page {
    return _devToolsPage;
  }

  DevToolsPerformance get performance {
    return _devToolsPerformance;
  }

  DevToolsSecurity get security {
    return _devToolsSecurity;
  }

  DevToolsServiceWorker get serviceWorker {
    return _devToolsServiceWorker;
  }

  DevToolsStorage get storage {
    return _devToolsStorage;
  }

  DevToolsSystemInfo get systemInfo {
    return _devToolsSystemInfo;
  }

  DevToolsTarget get target {
    return _devToolsTarget;
  }

  DevToolsTethering get tethering {
    return _devToolsTethering;
  }

  DevToolsTracing get tracing {
    return _devToolsTracing;
  }

  json_rpc_2.Peer get rpc;
}
