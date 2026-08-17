.class public final Lms/bz/bd/c/Pgl/a2;
.super Ljava/lang/Object;


# instance fields
.field private final hp:Landroid/content/Context;

.field private j:Ljava/lang/reflect/Method;

.field private jx:Ljava/lang/Object;

.field private l:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->hp:Landroid/content/Context;

    :try_start_0
    const-string v4, "849b3c"

    const/16 p1, 0x22

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->l:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->jx:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lms/bz/bd/c/Pgl/a2;->l:Ljava/lang/Class;

    const-string v4, "d5c332"

    const/4 v0, 0x7

    new-array v5, v0, [B

    fill-array-data v5, :array_1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lms/bz/bd/c/Pgl/a2;->j:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    nop

    :array_0
    .array-data 1
        0x2at
        0x39t
        0x47t
        0x58t
        0xdt
        0x7at
        0x3ft
        0x7t
        0x67t
        0x3bt
        0x2dt
        0x78t
        0x43t
        0x12t
        0x42t
        0x7dt
        0x36t
        0x5t
        0x64t
        0x7ct
        0x0t
        0x32t
        0x7at
        0x4t
        0x3t
        0x62t
        0x32t
        0x11t
        0x6dt
        0x20t
        0x0t
        0x3bt
        0x5at
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x72t
        0x32t
        0x4t
        0x68t
        0x2dt
        0xct
        0x43t
    .end array-data
.end method


# virtual methods
.method public final hp()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lms/bz/bd/c/Pgl/a2;->hp:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lms/bz/bd/c/Pgl/a2;->j:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iget-object v2, p0, Lms/bz/bd/c/Pgl/a2;->jx:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method
