.class public final enum Lcom/octopus/ad/a/g$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/octopus/ad/a/g$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/octopus/ad/a/g$d;

.field public static final enum b:Lcom/octopus/ad/a/g$d;

.field public static final enum c:Lcom/octopus/ad/a/g$d;

.field public static final enum d:Lcom/octopus/ad/a/g$d;

.field public static final enum e:Lcom/octopus/ad/a/g$d;

.field public static final enum f:Lcom/octopus/ad/a/g$d;

.field public static final enum g:Lcom/octopus/ad/a/g$d;

.field private static final synthetic i:[Lcom/octopus/ad/a/g$d;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/octopus/ad/a/g$d;

    .line 2
    .line 3
    const-string v1, "NET_UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/octopus/ad/a/g$d;->a:Lcom/octopus/ad/a/g$d;

    .line 10
    .line 11
    new-instance v1, Lcom/octopus/ad/a/g$d;

    .line 12
    .line 13
    const-string v2, "NET_3G"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/octopus/ad/a/g$d;->b:Lcom/octopus/ad/a/g$d;

    .line 20
    .line 21
    new-instance v2, Lcom/octopus/ad/a/g$d;

    .line 22
    .line 23
    const-string v3, "NET_4G"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/octopus/ad/a/g$d;->c:Lcom/octopus/ad/a/g$d;

    .line 30
    .line 31
    new-instance v3, Lcom/octopus/ad/a/g$d;

    .line 32
    .line 33
    const-string v4, "NET_5G"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lcom/octopus/ad/a/g$d;->d:Lcom/octopus/ad/a/g$d;

    .line 40
    .line 41
    new-instance v4, Lcom/octopus/ad/a/g$d;

    .line 42
    .line 43
    const-string v5, "NET_WIFI"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lcom/octopus/ad/a/g$d;->e:Lcom/octopus/ad/a/g$d;

    .line 50
    .line 51
    new-instance v5, Lcom/octopus/ad/a/g$d;

    .line 52
    .line 53
    const-string v6, "NET_OTHER"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v7}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lcom/octopus/ad/a/g$d;->f:Lcom/octopus/ad/a/g$d;

    .line 60
    .line 61
    new-instance v6, Lcom/octopus/ad/a/g$d;

    .line 62
    .line 63
    const-string v7, "NET_2G"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8, v8}, Lcom/octopus/ad/a/g$d;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lcom/octopus/ad/a/g$d;->g:Lcom/octopus/ad/a/g$d;

    .line 70
    .line 71
    filled-new-array/range {v0 .. v6}, [Lcom/octopus/ad/a/g$d;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/octopus/ad/a/g$d;->i:[Lcom/octopus/ad/a/g$d;

    .line 76
    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/octopus/ad/a/g$d;->h:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(I)Lcom/octopus/ad/a/g$d;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/octopus/ad/a/g$d;->g:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/octopus/ad/a/g$d;->f:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/octopus/ad/a/g$d;->e:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/octopus/ad/a/g$d;->d:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/octopus/ad/a/g$d;->c:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/octopus/ad/a/g$d;->b:Lcom/octopus/ad/a/g$d;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/octopus/ad/a/g$d;->a:Lcom/octopus/ad/a/g$d;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/octopus/ad/a/g$d;
    .locals 1

    .line 1
    const-class v0, Lcom/octopus/ad/a/g$d;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/octopus/ad/a/g$d;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/octopus/ad/a/g$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/a/g$d;->i:[Lcom/octopus/ad/a/g$d;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/octopus/ad/a/g$d;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/octopus/ad/a/g$d;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/a/g$d;->h:I

    return v0
.end method
