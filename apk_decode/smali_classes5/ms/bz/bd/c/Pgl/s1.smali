.class public final Lms/bz/bd/c/Pgl/s1;
.super Ljava/lang/Object;


# static fields
.field private static final hp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x9

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "713318"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bz/bd/c/Pgl/s1;->hp:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x30t
        0x63t
        0x17t
        0x9t
        0x5et
        0x7et
        0x7at
        0x40t
        0x36t
    .end array-data
.end method

.method public static hp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lms/bz/bd/c/Pgl/s1;->hp:Ljava/lang/String;

    return-object v0
.end method
