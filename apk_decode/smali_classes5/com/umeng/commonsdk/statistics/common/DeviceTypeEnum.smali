.class public final enum Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum DEFAULT:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

.field public static final enum SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;


# instance fields
.field private description:Ljava/lang/String;

.field private deviceIdType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "imei"

    .line 5
    .line 6
    const-string v3, "IMEI"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2, v2}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IMEI:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 12
    .line 13
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "oaid"

    .line 17
    .line 18
    const-string v4, "OAID"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->OAID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 24
    .line 25
    new-instance v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    const-string v4, "android_id"

    .line 29
    .line 30
    const-string v5, "ANDROIDID"

    .line 31
    .line 32
    invoke-direct {v2, v5, v3, v4, v4}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->ANDROIDID:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 36
    .line 37
    new-instance v3, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    const-string v5, "mac"

    .line 41
    .line 42
    const-string v6, "MAC"

    .line 43
    .line 44
    invoke-direct {v3, v6, v4, v5, v5}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v3, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->MAC:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 48
    .line 49
    new-instance v4, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 50
    .line 51
    const/4 v5, 0x4

    .line 52
    const-string v6, "serial_no"

    .line 53
    .line 54
    const-string v7, "SERIALNO"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5, v6, v6}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v4, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->SERIALNO:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 60
    .line 61
    new-instance v5, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 62
    .line 63
    const/4 v6, 0x5

    .line 64
    const-string v7, "idfa"

    .line 65
    .line 66
    const-string v8, "IDFA"

    .line 67
    .line 68
    invoke-direct {v5, v8, v6, v7, v7}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->IDFA:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 72
    .line 73
    new-instance v6, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 74
    .line 75
    const/4 v7, 0x6

    .line 76
    const-string v8, "null"

    .line 77
    .line 78
    const-string v9, "DEFAULT"

    .line 79
    .line 80
    invoke-direct {v6, v9, v7, v8, v8}, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v6, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->DEFAULT:Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 84
    .line 85
    filled-new-array/range {v0 .. v6}, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->$VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 90
    .line 91
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->description:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->$VALUES:[Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/common/DeviceTypeEnum;->deviceIdType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
