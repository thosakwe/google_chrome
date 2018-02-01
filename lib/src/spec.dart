// AUTO-GENERATED. DO NOT MODIFY BY HAND.
//
// Chrome DevTools Protocol v1.3

/** A node in the accessibility tree. */

class AXNode {
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
  /** The name of this property. */

  String name;

/** The value of this property. */

  AXValue value;
}
/**  */

class AXRelatedNode {
  /** The BackendNodeId of the related DOM node. */

  int backendDOMNodeId;

/** The IDRef value provided, if any. */

  String idref;

/** The text alternative of this node in the current context. */

  String text;
}
/** A single source for a computed AX property. */

class AXValueSource {
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
  /** Keyframe's time offset. */

  String offset;

/** `AnimationEffect`'s timing function. */

  String easing;
}
/** Keyframes Rule */

class KeyframesRule {
  /** CSS keyframed animation's name. */

  String name;

/** List of animation keyframes. */

  List<KeyframeStyle> keyframes;
}
/** AnimationEffect instance */

class AnimationEffect {
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
/** Animation instance. */

class Animation {
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
  /** Frame identifier. */

  String frameId;

/** Manifest URL. */

  String manifestURL;

/** Application cache status. */

  int status;
}
/** Detailed application cache information. */

class ApplicationCache {
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
  /** Resource url. */

  String url;

/** Resource size. */

  int size;

/** Resource type. */

  String type;
}
/** Chrome histogram. */

class Histogram {
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
  /** Minimum value (inclusive). */

  int low;

/** Maximum value (exclusive). */

  int high;

/** Number of samples. */

  int count;
}
/** Browser window bounds information */

class Bounds {
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
  /** The css style sheet identifier. */

  String styleSheetId;

/** The range of the style text in the enclosing stylesheet. */

  SourceRange range;

/** New style text. */

  String text;
}
/** CSS keyframe rule representation. */

class CSSKeyframeRule {
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
  /** Animation name. */

  Value animationName;

/** List of keyframes. */

  List<CSSKeyframeRule> keyframes;
}
/** Information about amount of glyphs that were rendered with given font. */

class PlatformFontUsage {
  /** Font's family name reported by platform. */

  String familyName;

/** Indicates if the font was downloaded or resolved locally. */

  bool isCustomFont;

/** Amount of glyphs that were rendered with this font. */

  num glyphCount;
}
/** Media query expression descriptor. */

class MediaQueryExpression {
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
  /** Array of media query expressions. */

  List<MediaQueryExpression> expressions;

/** Whether the media query condition is satisfied. */

  bool active;
}
/** CSS media rule descriptor. */

class CSSMedia {
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
  /** Computed style property name. */

  String name;

/** Computed style property value. */

  String value;
}
/**  */

class ShorthandEntry {
  /** Shorthand name. */

  String name;

/** Shorthand value. */

  String value;

/** Whether the property has "!important" annotation (implies `false` if absent). */

  bool important;
}
/** Text range within a resource. All numbers are zero-based. */

class SourceRange {
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
  /** Selectors in the list. */

  List<Value> selectors;

/** Rule selector text. */

  String text;
}
/** Data for a simple selector (these are delimited by commas in a selector list). */

class Value {
  /** Value text. */

  String text;

/** Value range in the underlying resource (if available). */

  SourceRange range;
}
/** Match data for a CSS rule. */

class RuleMatch {
  /** CSS rule in the match. */

  CSSRule rule;

/** Matching selector indices in the rule's selectorList selectors (0-based). */

  List matchingSelectors;
}
/** Inherited CSS rule collection from ancestor node. */

class InheritedStyleEntry {
  /** The ancestor node's inline style, if any, in the style inheritance chain. */

  CSSStyle inlineStyle;

/** Matches of CSS rules matching the ancestor node in the style inheritance chain. */

  List<RuleMatch> matchedCSSRules;
}
/** CSS rule collection for a single pseudo style. */

class PseudoElementMatches {
  /** Pseudo element type. */

  String pseudoType;

/** Matches of CSS rules applicable to the pseudo style. */

  List<RuleMatch> matches;
}
/** Cached response */

class CachedResponse {
  /** Entry content, base64-encoded. */

  String body;
}
/**  */

class Header {
  /**  */

  String name;

/**  */

  String value;
}
/** Cache identifier. */

class Cache {
  /** An opaque unique id of the cache. */

  String cacheId;

/** Security origin of the cache. */

  String securityOrigin;

/** The name of the cache. */

  String cacheName;
}
/** Data entry. */

class DataEntry {
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
  /** Shape bounds */

  List bounds;

/** Shape coordinate details */

  List shape;

/** Margin shape bounds */

  List marginShape;
}
/** Box model. */

class BoxModel {
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
  /** `Node`'s nodeType. */

  int nodeType;

/** `Node`'s nodeName. */

  String nodeName;

/**  */

  int backendNodeId;
}
/** Object event listener. */

class EventListener {
  /** `EventListener`'s type. */

  String type;

/** `EventListener`'s useCapture. */

  bool useCapture;

/** `EventListener`'s passive flag. */

  bool passive;

/** `EventListener`'s once flag. */

  bool once;

/** Script id of the handler code. */

  Object scriptId;

/** Line number in the script (0-based). */

  int lineNumber;

/** Column number in the script (0-based). */

  int columnNumber;

/** Event handler function value. */

  Object handler;

/** Event original handler function value. */

  Object originalHandler;

/** Node the listener is added to (if any). */

  int backendNodeId;
}
/** A name/value pair. */

class NameValue {
  /** Attribute/property name. */

  String name;

/** Attribute/property value. */

  String value;
}
/** A subset of the full ComputedStyle as defined by the request whitelist. */

class ComputedStyle {
  /** Name/value pairs of computed style properties. */

  List<NameValue> properties;
}
/** Details of an element in the DOM tree with a LayoutObject. */

class LayoutTreeNode {
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
  /** The absolute position bounding box. */

  Rect boundingBox;

/** The starting index in characters, for this post layout textbox substring. */

  int startCharacterIndex;

/** The number of characters in this post layout textbox substring. */

  int numCharacters;
}
/** A Node in the DOM tree. */

class DOMNode {
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
  /** Security origin for the storage. */

  String securityOrigin;

/** Whether the storage is local storage (not session storage). */

  bool isLocalStorage;
}
/** Database error. */

class Error {
  /** Error message. */

  String message;

/** Error code. */

  int code;
}
/** Database object. */

class Database {
  /** Database ID. */

  String id;

/** Database domain. */

  String domain;

/** Database name. */

  String name;

/** Database version. */

  String version;
}
/** Screen orientation. */

class ScreenOrientation {
  /** Orientation type. */

  String type;

/** Orientation angle. */

  int angle;
}
/** Encoding options for a screenshot. */

class ScreenshotParams {
  /** Image compression format (defaults to png). */

  String format;

/** Compression quality from range [0..100] (jpeg only). */

  int quality;
}
/** Key path. */

class KeyPath {
  /** Key path type. */

  String type;

/** String value. */

  String string;

/** Array value. */

  List array;
}
/** Key range. */

class KeyRange {
  /** Lower bound. */

  Key lower;

/** Upper bound. */

  Key upper;

/** If true lower bound is open. */

  bool lowerOpen;

/** If true upper bound is open. */

  bool upperOpen;
}
/** Key. */

class Key {
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
  /** Database name. */

  String name;

/** Database version. */

  int version;

/** Object stores in this database. */

  List<ObjectStore> objectStores;
}
/**  */

class TouchPoint {
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
  /** Offset from owning layer left boundary */

  num x;

/** Offset from owning layer top boundary */

  num y;

/** Base64-encoded snapshot data. */

  String picture;
}
/** Sticky position constraints. */

class StickyPositionConstraint {
  /** Layout rectangle of the sticky element before being shifted */

  Rect stickyBoxRect;

/** Layout rectangle of the containing block of the sticky element */

  Rect containingBlockRect;

/** The nearest sticky layer that shifts the sticky box */

  String nearestLayerShiftingStickyBox;

/** The nearest sticky layer that shifts the containing block */

  String nearestLayerShiftingContainingBlock;
}
/** Rectangle where scrolling happens on the main thread. */

class ScrollRect {
  /** Rectangle itself. */

  Rect rect;

/** Reason for rectangle to force scrolling on the main thread */

  String type;
}
/** Violation configuration setting. */

class ViolationSetting {
  /** Violation type. */

  String name;

/** Time threshold to trigger upon. */

  num threshold;
}
/** Log entry. */

class LogEntry {
  /** Log entry source. */

  String source;

/** Log entry severity. */

  String level;

/** Logged text. */

  String text;

/** Timestamp when this entry was added. */

  Object timestamp;

/** URL of the resource if known. */

  String url;

/** Line number in the resource. */

  int lineNumber;

/** JavaScript stack trace. */

  Object stackTrace;

/** Identifier of the network request associated with this entry. */

  String networkRequestId;

/** Identifier of the worker associated with this entry. */

  String workerId;

/** Call arguments. */

  List<Object> args;
}
/** Array of heap profile samples. */

class SamplingProfile {
  /**  */

  List<SamplingProfileNode> samples;
}
/** Heap profile sample. */

class SamplingProfileNode {
  /** Size of the sampled allocation. */

  num size;

/** Number of sampled allocations of that size. */

  num count;

/** Execution stack at the point of allocation. */

  List stack;
}
/** Request pattern for interception. */

class RequestPattern {
  /** Wildcards ('*' -> zero or more, '?' -> exactly one) are allowed. Escape character is
backslash. Omitting is equivalent to "*". */

  String urlPattern;

/** If set, only requests for matching resource types will be intercepted. */

  String resourceType;

/** Stage at wich to begin intercepting requests. Default is Request. */

  String interceptionStage;
}
/** Response to an AuthChallenge. */

class AuthChallengeResponse {
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
/** Authorization challenge for HTTP status code 401 or 407. */

class AuthChallenge {
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
/** Information about the request initiator. */

class Initiator {
  /** Type of this initiator. */

  String type;

/** Initiator JavaScript stack trace, set for Script only. */

  Object stack;

/** Initiator URL, set for Parser type or for Script type (when script is importing module). */

  String url;

/** Initiator line number, set for Parser type or for Script type (when script is importing
module) (0-based). */

  num lineNumber;
}
/** Information about the cached resource. */

class CachedResource {
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
  /** WebSocket frame opcode. */

  num opcode;

/** WebSocke frame mask. */

  bool mask;

/** WebSocke frame payload data. */

  String payloadData;
}
/** WebSocket response data. */

class WebSocketResponse {
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
  /** HTTP request headers. */

  Headers headers;
}
/** HTTP response data. */

class Response {
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
/** HTTP request data. */

class Request {
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

class Headers {}
/** Configuration data for the highlighting of page elements. */

class HighlightConfig {
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
  /** Frame information for this tree item. */

  Frame frame;

/** Child frames. */

  List<FrameTree> childFrames;
}
/** Information about the Frame hierarchy along with their cached resources. */

class FrameResourceTree {
  /** Frame information for this tree item. */

  Frame frame;

/** Child frames. */

  List<FrameResourceTree> childFrames;

/** Information about frame resources. */

  List<FrameResource> resources;
}
/** Information about the Resource on the page. */

class FrameResource {
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
  /** Metric name. */

  String name;

/** Metric value. */

  num value;
}
/** Information about insecure content on the page. */

class InsecureContentStatus {
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
  /**  */

  String registrationId;

/**  */

  String scopeURL;

/**  */

  bool isDeleted;
}
/** Usage for a storage type. */

class UsageForType {
  /** Name of storage type. */

  String storageType;

/** Storage usage (bytes). */

  num usage;
}
/** Provides information about the GPU(s) on the system. */

class GPUInfo {
  /** The graphics devices on the system. Element 0 is the primary GPU. */

  List<GPUDevice> devices;

/** An optional dictionary of additional GPU related attributes. */

  Map auxAttributes;

/** An optional dictionary of graphics features and their status. */

  Map featureStatus;

/** An optional array of GPU driver bug workarounds. */

  List driverBugWorkarounds;
}
/** Describes a single graphics processor (GPU). */

class GPUDevice {
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
  /**  */

  String host;

/**  */

  int port;
}
/**  */

class TargetInfo {
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
/**  */

class TraceConfig {
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

class MemoryDumpConfig {}
