.class final Lms/bz/bd/c/Pgl/z;
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
    const-string v4, "c2ce08"

    const/16 p2, 0x22

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

    const-string v4, "8b5d93"

    const/4 p3, 0x1

    new-array v5, p3, [B

    const/4 p3, 0x0

    const/16 p4, 0x28

    aput-byte p4, v5, p3

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    :cond_0
    return-object p1

    :array_0
    .array-data 1
        0x71t
        0x3ft
        0x1dt
        0x5ft
        0xdt
        0x36t
        0x74t
        0x16t
        0x36t
        0x34t
        0x7ct
        0x33t
        0x15t
        0x5ft
        0x2t
        0x20t
        0x62t
        0x0t
        0x37t
        0x36t
        0x3ct
        0x23t
        0x15t
        0x1ft
        0x1ct
        0x20t
        0x72t
        0x5dt
        0x3ft
        0x39t
        0x3ct
        0x1dt
        0x23t
        0x33t
    .end array-data
.end method
