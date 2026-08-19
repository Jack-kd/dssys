.class final Lms/bz/bd/c/Pgl/x0;
.super Lms/bz/bd/c/Pgl/pblz$pgla;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblz$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method public final hp(JLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    const-string v4, "b4c5ed"

    const/16 p2, 0x3b

    new-array v5, p2, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v4, "826f87"

    const/16 p3, 0xd

    new-array v5, p3, [B

    fill-array-data v5, :array_1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string v4, "95a96d"

    const/4 p2, 0x7

    new-array v5, p2, [B

    fill-array-data v5, :array_2

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :cond_1
    return-object p1

    :catchall_0
    const/4 p2, 0x3

    new-array v5, p2, [B

    fill-array-data v5, :array_3

    const-wide/16 v2, 0x0

    const-string v4, "e1aa26"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :array_0
    .array-data 1
        0x70t
        0x39t
        0x1dt
        0xft
        0x49t
        0x60t
        0x2ft
        0x14t
        0x3ct
        0x61t
        0x61t
        0x39t
        0x19t
        0x45t
        0x14t
        0x66t
        0x66t
        0x16t
        0x7ct
        0x74t
        0x66t
        0x39t
        0x4t
        0x40t
        0x14t
        0x51t
        0x45t
        0x3bt
        0x37t
        0x71t
        0x64t
        0x39t
        0x2t
        0x4at
        0x6et
        0x72t
        0x66t
        0x36t
        0x3dt
        0x6bt
        0x67t
        0x33t
        0x8t
        0x55t
        0x6at
        0x61t
        0x6et
        0x3t
        0x3bt
        0x61t
        0x76t
        0x24t
        0x31t
        0x45t
        0x5bt
        0x63t
        0x75t
        0x10t
        0x20t
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x31t
        0x57t
        0x19t
        0x26t
        0x33t
        0x15t
        0x16t
        0x70t
        0x3t
        0x3at
        0x35t
        0x57t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x26t
        0x32t
        0x5t
        0x78t
        0x1at
        0x76t
        0x28t
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x32t
        0x14t
    .end array-data
.end method
