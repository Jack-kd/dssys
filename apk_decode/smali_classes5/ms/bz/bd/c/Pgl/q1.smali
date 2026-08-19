.class public final Lms/bz/bd/c/Pgl/q1;
.super Ljava/lang/Object;


# static fields
.field private static hp:Lms/bz/bd/c/Pgl/q1;


# instance fields
.field private a:J

.field private e:Z

.field private eb:Ljava/lang/String;

.field private j:J

.field private jx:J

.field private l:J

.field private q:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private w:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lms/bz/bd/c/Pgl/q1;->w:I

    return-void
.end method

.method public static hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Class;

    :try_start_0
    const-string v5, "49cb0f"

    const/16 v1, 0x10

    new-array v6, v1, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 1
        0x22t
        0x3et
        0x4t
        0x32t
        0xat
        0x72t
        0x3bt
        0x19t
        0x20t
        0x37t
        0x21t
        0x1dt
        0x19t
        0x13t
        0x3t
        0x75t
    .end array-data
.end method

.method public static hp([Landroid/view/Display;)Ljava/lang/String;
    .locals 12

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v9, "47204b"

    const/16 v5, 0x11

    new-array v10, v5, [B

    fill-array-data v10, :array_0

    const v5, 0x1000001

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "62b70d"

    const/4 v4, 0x1

    new-array v11, v4, [B

    const/16 v4, 0x7c

    aput-byte v4, v11, v2

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0

    :array_0
    .array-data 1
        0x28t
        0x1at
        0x56t
        0x4at
        0xet
        0x67t
        0x7t
        0x17t
        0x60t
        0x6bt
        0x24t
        0x32t
        0x44t
        0x6at
        0xat
        0x78t
        0x32t
    .end array-data
.end method

.method public static hp()Lms/bz/bd/c/Pgl/q1;
    .locals 1

    .line 3
    sget-object v0, Lms/bz/bd/c/Pgl/q1;->hp:Lms/bz/bd/c/Pgl/q1;

    if-nez v0, :cond_0

    new-instance v0, Lms/bz/bd/c/Pgl/q1;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/q1;-><init>()V

    sput-object v0, Lms/bz/bd/c/Pgl/q1;->hp:Lms/bz/bd/c/Pgl/q1;

    :cond_0
    sget-object v0, Lms/bz/bd/c/Pgl/q1;->hp:Lms/bz/bd/c/Pgl/q1;

    return-object v0
.end method

.method public static l([Landroid/view/Display;)Ljava/lang/String;
    .locals 15

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "c344c9"

    const/16 v6, 0xc

    new-array v11, v6, [B

    fill-array-data v11, :array_0

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v10, "83db7b"

    const/16 v6, 0x10

    new-array v11, v6, [B

    fill-array-data v11, :array_1

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "71d8b7"

    const/4 v6, 0x1

    new-array v12, v6, [B

    const/16 v7, 0x6a

    aput-byte v7, v12, v2

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "8bd3b3"

    const/4 v7, 0x5

    new-array v13, v7, [B

    fill-array-data v13, :array_2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "684ec8"

    new-array v13, v6, [B

    const/16 v7, 0x6b

    aput-byte v7, v13, v2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "841234"

    const/4 v7, 0x4

    new-array v13, v7, [B

    fill-array-data v13, :array_3

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4, v8}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "c24a75"

    new-array v14, v6, [B

    const/16 v8, 0x3e

    aput-byte v8, v14, v2

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "cb5b80"

    new-array v14, v7, [B

    fill-array-data v14, :array_4

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v11, "06cac3"

    new-array v12, v6, [B

    const/16 v4, 0x7a

    aput-byte v4, v12, v2

    const v7, 0x1000001

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x15t
        0x4et
        0x53t
        0x4ct
        0x22t
        0x61t
        0xbt
        0x4ct
        0x6at
        0x74t
        0x3et
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x26t
        0x19t
        0x13t
        0x1at
        0x45t
        0x3at
        0x11t
        0x3et
        0x33t
        0x2et
        0x34t
        0x39t
        0x17t
        0x5t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x2ft
        0x6ct
        0x16t
        0x40t
        0x4et
    .end array-data

    nop

    :array_3
    .array-data 1
        0x27t
        0x37t
        0x4ft
        0x43t
    .end array-data

    :array_4
    .array-data 1
        0x66t
        0x79t
        0x56t
        0x13t
    .end array-data
.end method


# virtual methods
.method public final hp(I)V
    .locals 4

    .line 4
    iget v0, p0, Lms/bz/bd/c/Pgl/q1;->w:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lms/bz/bd/c/Pgl/q1;->a:J

    :cond_0
    iput p1, p0, Lms/bz/bd/c/Pgl/q1;->w:I

    return-void
.end method

.method public final hp(J)V
    .locals 6

    .line 5
    iput-wide p1, p0, Lms/bz/bd/c/Pgl/q1;->l:J

    const/4 p1, 0x3

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "0fc095"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/q1;->eb:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x20t
        0x60t
        0x14t
    .end array-data
.end method

.method public final hp(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lms/bz/bd/c/Pgl/q1;->s:Ljava/lang/String;

    return-void
.end method

.method public final j()Z
    .locals 4

    iget-wide v0, p0, Lms/bz/bd/c/Pgl/q1;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lms/bz/bd/c/Pgl/q1;->jx:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lms/bz/bd/c/Pgl/q1;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final jx()Lorg/json/JSONObject;
    .locals 14

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "14ca68"

    const/4 v7, 0x2

    new-array v6, v7, [B

    fill-array-data v6, :array_0

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lms/bz/bd/c/Pgl/q1;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "e3d27a"

    new-array v13, v7, [B

    fill-array-data v13, :array_1

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lms/bz/bd/c/Pgl/q1;->jx:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "4ce6d2"

    new-array v13, v7, [B

    fill-array-data v13, :array_2

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lms/bz/bd/c/Pgl/q1;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "6a8c4a"

    new-array v13, v7, [B

    fill-array-data v13, :array_3

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lms/bz/bd/c/Pgl/q1;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v12, "ccbb4a"

    const/4 v1, 0x3

    new-array v13, v1, [B

    fill-array-data v13, :array_4

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lms/bz/bd/c/Pgl/q1;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "f3bcb8"

    new-array v13, v7, [B

    fill-array-data v13, :array_5

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/q1;->eb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lms/bz/bd/c/Pgl/q1;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v12, "898714"

    new-array v13, v7, [B

    fill-array-data v13, :array_6

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/q1;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lms/bz/bd/c/Pgl/q1;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v12, "14a01e"

    new-array v13, v7, [B

    fill-array-data v13, :array_7

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lms/bz/bd/c/Pgl/q1;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lms/bz/bd/c/Pgl/q1;->j:J

    const-string v12, "f0d4dc"

    new-array v13, v7, [B

    fill-array-data v13, :array_8

    const v8, 0x1000001

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-static/range {v8 .. v13}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-wide v2, p0, Lms/bz/bd/c/Pgl/q1;->j:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_2

    return-object v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x22t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x66t
        0x25t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x21t
        0x6ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x23t
        0x77t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x71t
        0x60t
        0x15t
    .end array-data

    :array_5
    .array-data 1
        0x7at
        0x35t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x39t
        0x30t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x24t
        0x3ft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x74t
        0x26t
    .end array-data
.end method

.method public final l()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lms/bz/bd/c/Pgl/q1;->e:Z

    return-void
.end method

.method public final l(J)V
    .locals 6

    .line 3
    iput-wide p1, p0, Lms/bz/bd/c/Pgl/q1;->jx:J

    const/4 p1, 0x6

    new-array v5, p1, [B

    fill-array-data v5, :array_0

    const-wide/16 v2, 0x0

    const-string v4, "3adbc3"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lms/bz/bd/c/Pgl/q1;->eb:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0x66t
        0x1at
        0x19t
        0x4at
        0x21t
    .end array-data
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lms/bz/bd/c/Pgl/q1;->q:Ljava/lang/String;

    return-void
.end method
