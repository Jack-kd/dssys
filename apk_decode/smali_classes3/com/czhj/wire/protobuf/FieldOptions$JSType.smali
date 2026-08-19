.class public final enum Lcom/czhj/wire/protobuf/FieldOptions$JSType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/czhj/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/protobuf/FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/wire/protobuf/FieldOptions$JSType;",
        ">;",
        "Lcom/czhj/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/wire/protobuf/FieldOptions$JSType;

.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/czhj/wire/protobuf/FieldOptions$JSType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum JS_NORMAL:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

.field public static final enum JS_NUMBER:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

.field public static final enum JS_STRING:Lcom/czhj/wire/protobuf/FieldOptions$JSType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    const-string v1, "JS_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/czhj/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_NORMAL:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    new-instance v1, Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    const-string v2, "JS_STRING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/czhj/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_STRING:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    new-instance v2, Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    const-string v3, "JS_NUMBER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/czhj/wire/protobuf/FieldOptions$JSType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_NUMBER:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    filled-new-array {v0, v1, v2}, [Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    move-result-object v0

    sput-object v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->$VALUES:[Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    new-instance v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;

    invoke-direct {v0}, Lcom/czhj/wire/protobuf/FieldOptions$JSType$ProtoAdapter_JSType;-><init>()V

    sput-object v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/czhj/wire/protobuf/FieldOptions$JSType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_NUMBER:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_STRING:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->JS_NORMAL:Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/wire/protobuf/FieldOptions$JSType;
    .locals 1

    const-class v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    return-object p0
.end method

.method public static values()[Lcom/czhj/wire/protobuf/FieldOptions$JSType;
    .locals 1

    sget-object v0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->$VALUES:[Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    invoke-virtual {v0}, [Lcom/czhj/wire/protobuf/FieldOptions$JSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/wire/protobuf/FieldOptions$JSType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/czhj/wire/protobuf/FieldOptions$JSType;->value:I

    return v0
.end method
