.class public Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

.field protected annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

.field protected name:Ljava/lang/String;

.field protected stringConvertibleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/fourthline/cling/binding/annotations/AnnotationLocalServiceBinder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;Ljava/lang/String;Lorg/fourthline/cling/model/state/StateVariableAccessor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/state/StateVariableAccessor;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public createDatatype()Lorg/fourthline/cling/model/types/Datatype;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->datatype()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v4, "Using accessor return type as state variable type: "

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getStringConvertibleTypes()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v1}, Lorg/fourthline/cling/model/ModelUtil;->isStringConvertibleType(Ljava/util/Set;Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 62
    .line 63
    const-string v1, "Return type is string-convertible, using string datatype"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lorg/fourthline/cling/model/types/Datatype$Default;->STRING:Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 69
    .line 70
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :cond_0
    invoke-static {v1}, Lorg/fourthline/cling/model/types/Datatype$Default;->getByJavaType(Ljava/lang/Class;)Lorg/fourthline/cling/model/types/Datatype$Default;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "Return type has default UPnP datatype: "

    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/Datatype$Default;->getBuiltinType()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_3

    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    array-length v1, v1

    .line 131
    if-gtz v1, :cond_2

    .line 132
    .line 133
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 142
    .line 143
    if-eq v1, v2, :cond_3

    .line 144
    .line 145
    :cond_2
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 146
    .line 147
    const-string v1, "State variable has restricted allowed values, hence using \'string\' datatype"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "string"

    .line 153
    .line 154
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_5

    .line 159
    .line 160
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "Trying to find built-in UPnP datatype for detected name: "

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getByDescriptorName(Ljava/lang/String;)Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    sget-object v1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v3, "Found built-in UPnP datatype: "

    .line 196
    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->getDatatype()Lorg/fourthline/cling/model/types/Datatype;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    return-object v0

    .line 215
    :cond_4
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 216
    .line 217
    const-string v1, "No built-in UPnP datatype found, using CustomDataType (TODO: NOT IMPLEMENTED)"

    .line 218
    .line 219
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_5
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v2, "Could not detect datatype of state variable: "

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0
.end method

.method public createDefaultValue(Lorg/fourthline/cling/model/types/Datatype;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p1, v0}, Lorg/fourthline/cling/model/types/Datatype;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    sget-object p1, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "Found state variable default value: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->defaultValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object p1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "Default value doesn\'t match datatype of state variable \'"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "\': "

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_0
    const/4 p1, 0x0

    .line 106
    return-object p1
.end method

.method public createStateVariable()Lorg/fourthline/cling/model/meta/StateVariable;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Creating state variable \'"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "\' with accessor: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createDatatype()Lorg/fourthline/cling/model/types/Datatype;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->createDefaultValue(Lorg/fourthline/cling/model/types/Datatype;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lorg/fourthline/cling/model/types/Datatype$Builtin;->STRING:Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 48
    .line 49
    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    const-string v4, "Default value \'"

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v2, :cond_6

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueProvider()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eq v2, v3, :cond_0

    .line 74
    .line 75
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValuesFromProvider()[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    array-length v2, v2

    .line 89
    if-lez v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValues()[Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eq v2, v3, :cond_2

    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValuesEnum()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lorg/fourthline/cling/model/state/StateVariableAccessor;->getReturnType()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {p0, v2}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    goto :goto_0

    .line 156
    :cond_3
    sget-object v2, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 157
    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v8, "Not restricting allowed values (of string typed state var): "

    .line 164
    .line 165
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move-object v2, v6

    .line 183
    :goto_0
    if-eqz v2, :cond_7

    .line 184
    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    array-length v7, v2

    .line 188
    move v8, v5

    .line 189
    :goto_1
    if-ge v8, v7, :cond_5

    .line 190
    .line 191
    aget-object v9, v2, v8

    .line 192
    .line 193
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-eqz v9, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_5
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 204
    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, "\' is not in allowed values of: "

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :cond_6
    move-object v2, v6

    .line 237
    :cond_7
    :goto_2
    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-static {v7}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_c

    .line 246
    .line 247
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v7}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueRangeProvider()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    if-eq v7, v3, :cond_8

    .line 256
    .line 257
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedRangeFromProvider()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    goto :goto_4

    .line 262
    :cond_8
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    .line 267
    .line 268
    .line 269
    move-result-wide v7

    .line 270
    const-wide/16 v9, 0x0

    .line 271
    .line 272
    cmp-long v3, v7, v9

    .line 273
    .line 274
    if-gtz v3, :cond_a

    .line 275
    .line 276
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    .line 281
    .line 282
    .line 283
    move-result-wide v7

    .line 284
    cmp-long v3, v7, v9

    .line 285
    .line 286
    if-lez v3, :cond_9

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_9
    sget-object v3, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 290
    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    const-string v8, "Not restricting allowed value range (of numeric typed state var): "

    .line 297
    .line 298
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-virtual {v3, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMinimum()J

    .line 321
    .line 322
    .line 323
    move-result-wide v7

    .line 324
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueMaximum()J

    .line 329
    .line 330
    .line 331
    move-result-wide v9

    .line 332
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueStep()J

    .line 337
    .line 338
    .line 339
    move-result-wide v11

    .line 340
    move-object v6, p0

    .line 341
    invoke-virtual/range {v6 .. v12}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    move-object v6, v3

    .line 346
    :goto_4
    if-eqz v1, :cond_c

    .line 347
    .line 348
    if-eqz v6, :cond_c

    .line 349
    .line 350
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 355
    .line 356
    .line 357
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    invoke-virtual {v6, v7, v8}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;->isInRange(J)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_b

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_b
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 366
    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v1, "\' is not in allowed range of: "

    .line 379
    .line 380
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    throw v0

    .line 398
    :catch_0
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 399
    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, "\' is not numeric (for range checking) of: "

    .line 412
    .line 413
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v0

    .line 431
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    invoke-interface {v3}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->sendEvents()Z

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    if-eqz v3, :cond_e

    .line 440
    .line 441
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    if-eqz v4, :cond_d

    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_d
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 449
    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .line 454
    .line 455
    const-string v2, "State variable sends events but has no accessor for field or getter: "

    .line 456
    .line 457
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v0

    .line 475
    :cond_e
    :goto_6
    if-eqz v3, :cond_11

    .line 476
    .line 477
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    if-lez v4, :cond_f

    .line 486
    .line 487
    sget-object v4, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 488
    .line 489
    new-instance v7, Ljava/lang/StringBuilder;

    .line 490
    .line 491
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .line 493
    .line 494
    const-string v8, "Moderating state variable events using maximum rate (milliseconds): "

    .line 495
    .line 496
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    .line 504
    .line 505
    .line 506
    move-result v8

    .line 507
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v7

    .line 514
    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    invoke-interface {v4}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMaximumRateMilliseconds()I

    .line 522
    .line 523
    .line 524
    move-result v4

    .line 525
    goto :goto_7

    .line 526
    :cond_f
    move v4, v5

    .line 527
    :goto_7
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 528
    .line 529
    .line 530
    move-result-object v7

    .line 531
    invoke-interface {v7}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    .line 532
    .line 533
    .line 534
    move-result v7

    .line 535
    if-lez v7, :cond_10

    .line 536
    .line 537
    invoke-interface {v0}, Lorg/fourthline/cling/model/types/Datatype;->getBuiltin()Lorg/fourthline/cling/model/types/Datatype$Builtin;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-static {v7}, Lorg/fourthline/cling/model/types/Datatype$Builtin;->isNumeric(Lorg/fourthline/cling/model/types/Datatype$Builtin;)Z

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    if-eqz v7, :cond_10

    .line 546
    .line 547
    sget-object v5, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 548
    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .line 553
    .line 554
    const-string v8, "Moderating state variable events using minimum delta: "

    .line 555
    .line 556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    invoke-interface {v8}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    .line 564
    .line 565
    .line 566
    move-result v8

    .line 567
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 578
    .line 579
    .line 580
    move-result-object v5

    .line 581
    invoke-interface {v5}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->eventMinimumDelta()I

    .line 582
    .line 583
    .line 584
    move-result v5

    .line 585
    :cond_10
    move v13, v5

    .line 586
    move v5, v4

    .line 587
    move v4, v13

    .line 588
    goto :goto_8

    .line 589
    :cond_11
    move v4, v5

    .line 590
    :goto_8
    new-instance v7, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;

    .line 591
    .line 592
    invoke-direct {v7, v0, v1, v2, v6}, Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;-><init>(Lorg/fourthline/cling/model/types/Datatype;Ljava/lang/String;[Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;)V

    .line 593
    .line 594
    .line 595
    new-instance v0, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;

    .line 596
    .line 597
    invoke-direct {v0, v3, v5, v4}, Lorg/fourthline/cling/model/meta/StateVariableEventDetails;-><init>(ZII)V

    .line 598
    .line 599
    .line 600
    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariable;

    .line 601
    .line 602
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-direct {v1, v2, v7, v0}, Lorg/fourthline/cling/model/meta/StateVariable;-><init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/StateVariableTypeDetails;Lorg/fourthline/cling/model/meta/StateVariableEventDetails;)V

    .line 607
    .line 608
    .line 609
    return-object v1
.end method

.method public getAccessor()Lorg/fourthline/cling/model/state/StateVariableAccessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->accessor:Lorg/fourthline/cling/model/state/StateVariableAccessor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllowedRangeFromProvider()Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueRangeProvider()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;

    .line 22
    .line 23
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getMinimum()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getMaximum()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueRangeProvider;->getStep()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    move-object v1, p0

    .line 36
    invoke-virtual/range {v1 .. v7}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    .line 37
    .line 38
    .line 39
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v3, "Allowed value range provider can\'t be instantiated: "

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_0
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "Allowed value range provider is not of type "

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ": "

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0
.end method

.method public getAllowedValueRange(JJJ)Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    move-wide v4, p3

    .line 9
    move-wide v6, p5

    .line 10
    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/StateVariableAllowedValueRange;-><init>(JJJ)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string p3, "Allowed value range maximum is smaller than minimum: "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public getAllowedValues(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Restricting allowed values of state variable to Enum: "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    array-length v0, v0

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    array-length v2, v2

    .line 46
    if-ge v1, v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    aget-object v2, v2, v1

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    if-gt v3, v4, :cond_0

    .line 65
    .line 66
    sget-object v3, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->log:Ljava/util/logging/Logger;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v5, "Adding allowed value (converted to string): "

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    aput-object v2, v0, v1

    .line 97
    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    new-instance p1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 102
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "Allowed value string (that is, Enum constant name) is longer than 32 characters: "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p1, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_1
    return-object v0

    .line 129
    :cond_2
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 130
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v2, "Allowed values type is not an Enum: "

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v0, p1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public getAllowedValuesFromProvider()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/LocalServiceBindingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;->allowedValueProvider()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lorg/fourthline/cling/binding/AllowedValueProvider;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/fourthline/cling/binding/AllowedValueProvider;

    .line 22
    .line 23
    invoke-interface {v0}, Lorg/fourthline/cling/binding/AllowedValueProvider;->getValues()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "Allowed value provider can\'t be instantiated: "

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_0
    new-instance v0, Lorg/fourthline/cling/binding/LocalServiceBindingException;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "Allowed value provider is not of type "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ": "

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->getName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Lorg/fourthline/cling/binding/LocalServiceBindingException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method public getAnnotation()Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->annotation:Lorg/fourthline/cling/binding/annotations/UpnpStateVariable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringConvertibleTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/fourthline/cling/binding/annotations/AnnotationStateVariableBinder;->stringConvertibleTypes:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method
