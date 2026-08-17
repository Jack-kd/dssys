.class public final Lms/bz/bd/c/Pgl/c1;
.super Ljava/lang/Object;


# instance fields
.field private final hp:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/c1;->hp:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final hp()Ljava/lang/String;
    .locals 15

    const/16 v0, 0x24

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "328a8f"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lms/bz/bd/c/Pgl/c1;->hp:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const-string v6, "be5c9f"

    const/4 v8, 0x7

    new-array v7, v8, [B

    fill-array-data v7, :array_1

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    const-string v13, "ca4561"

    const/4 v0, 0x4

    new-array v14, v0, [B

    fill-array-data v14, :array_2

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v13, "dd0305"

    const/4 v0, 0x2

    new-array v14, v0, [B

    fill-array-data v14, :array_3

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v7, "5e9746"

    new-array v8, v8, [B

    fill-array-data v8, :array_4

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1

    :array_0
    .array-data 1
        0x21t
        0x3ft
        0x45t
        0x1t
        0x2t
        0x7ft
        0x24t
        0x49t
        0x26t
        0x7et
        0x21t
        0x3et
        0x5t
        0x1bt
        0x12t
        0x73t
        0x39t
        0x12t
        0x27t
        0x38t
        0x26t
        0x35t
        0x45t
        0x1t
        0xet
        0x65t
        0x29t
        0x5ct
        0x60t
        0x35t
        0x27t
        0x3et
        0x5ft
        0x1ct
        0x13t
        0x68t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x62t
        0x52t
        0x38t
        0x27t
        0x58t
        0x45t
    .end array-data

    :array_2
    .array-data 1
        0x71t
        0x6ct
        0x43t
        0x44t
    .end array-data

    :array_3
    .array-data 1
        0x7ct
        0x62t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x29t
        0x62t
        0x59t
        0x50t
        0xat
        0x26t
        0x33t
    .end array-data
.end method
