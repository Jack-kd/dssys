.class public final enum Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/czhj/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/protobuf/FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;",
        ">;",
        "Lcom/czhj/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TYPE_BOOL:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_BYTES:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_DOUBLE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_ENUM:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_FLOAT:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_GROUP:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_INT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_INT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_MESSAGE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SFIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_SINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_STRING:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

.field public static final enum TYPE_UINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v2, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_FLOAT"

    const/4 v4, 0x2

    invoke-direct {v2, v0, v3, v4}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v3, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_INT64"

    const/4 v5, 0x3

    invoke-direct {v3, v0, v4, v5}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v4, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_UINT64"

    const/4 v6, 0x4

    invoke-direct {v4, v0, v5, v6}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v5, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_INT32"

    const/4 v7, 0x5

    invoke-direct {v5, v0, v6, v7}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v6, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_FIXED64"

    const/4 v8, 0x6

    invoke-direct {v6, v0, v7, v8}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v7, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_FIXED32"

    const/4 v9, 0x7

    invoke-direct {v7, v0, v8, v9}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v8, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_BOOL"

    const/16 v10, 0x8

    invoke-direct {v8, v0, v9, v10}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v9, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_STRING"

    const/16 v11, 0x9

    invoke-direct {v9, v0, v10, v11}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v10, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_GROUP"

    const/16 v12, 0xa

    invoke-direct {v10, v0, v11, v12}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v11, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_MESSAGE"

    const/16 v13, 0xb

    invoke-direct {v11, v0, v12, v13}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v12, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_BYTES"

    const/16 v14, 0xc

    invoke-direct {v12, v0, v13, v14}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v13, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_UINT32"

    const/16 v15, 0xd

    invoke-direct {v13, v0, v14, v15}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v14, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_ENUM"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v14, v0, v15, v1}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v15, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v0, "TYPE_SFIXED32"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v15, v0, v1, v2}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v1, "TYPE_SFIXED64"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v1, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v2, "TYPE_SINT32"

    move-object/from16 v19, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v3, v0}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v2, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    const-string v3, "TYPE_SINT64"

    move-object/from16 v20, v1

    const/16 v1, 0x12

    invoke-direct {v2, v3, v0, v1}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    move-object/from16 v1, v16

    move-object/from16 v3, v18

    move-object/from16 v16, v19

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v20

    filled-new-array/range {v1 .. v18}, [Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    move-result-object v0

    sput-object v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->$VALUES:[Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    new-instance v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;

    invoke-direct {v0}, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type$ProtoAdapter_Type;-><init>()V

    sput-object v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

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

    iput p3, p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_SFIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_ENUM:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BYTES:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_MESSAGE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_GROUP:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_STRING:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_BOOL:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FIXED64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT32:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_UINT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_INT64:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_FLOAT:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;
    .locals 1

    const-class v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object p0
.end method

.method public static values()[Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;
    .locals 1

    sget-object v0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->$VALUES:[Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    invoke-virtual {v0}, [Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/czhj/wire/protobuf/FieldDescriptorProto$Type;->value:I

    return v0
.end method
