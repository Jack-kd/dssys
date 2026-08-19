.class public final Lcom/smartdigimkt/d4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartdigimkt/sdk/api/ISDMAdManager;


# static fields
.field public static volatile a:Lcom/smartdigimkt/d4/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/smartdigimkt/d4/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/smartdigimkt/d4/i;->a:Lcom/smartdigimkt/d4/i;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/smartdigimkt/d4/i;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/smartdigimkt/d4/i;->a:Lcom/smartdigimkt/d4/i;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/smartdigimkt/d4/i;

    invoke-direct {v1}, Lcom/smartdigimkt/d4/i;-><init>()V

    sput-object v1, Lcom/smartdigimkt/d4/i;->a:Lcom/smartdigimkt/d4/i;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/smartdigimkt/d4/i;->a:Lcom/smartdigimkt/d4/i;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 7

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/smartdigimkt/f3/s;

    .line 10
    iget-object v5, v4, Lcom/smartdigimkt/f3/s;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v6, v4, Lcom/smartdigimkt/f3/s;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v4, v4, Lcom/smartdigimkt/f3/s;->b:Ljava/lang/String;

    .line 16
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONArray;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_2
    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/util/Map;I)V
    .locals 4

    const-string v0, "ad_height"

    const-string v1, "ad_width"

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    const-string p2, "size"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 21
    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 22
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 23
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 24
    invoke-virtual {p0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 26
    :cond_1
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/h;->j(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/h;->i(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void

    .line 28
    :cond_2
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/h;->j(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartdigimkt/c5/h;->i(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final getBidTokenJSONObject(Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    const-string v1, "sdm_load_data"

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    instance-of v2, v1, Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v1, Landroid/os/Bundle;

    .line 21
    .line 22
    const-class v2, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/smartdigimkt/d3/b;->a(Landroid/os/Bundle;Ljava/lang/Class;)Lcom/smartdigimkt/sdk/core/bridge/entity/BaseInfoEntity;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    move-object v1, v0

    .line 34
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getRequestInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/bridge/entity/LoadInfoEntity;->getRequestInfoEntity()Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/bridge/entity/RequestInfoEntity;->convertToBaseAdRequestInfo()Lcom/smartdigimkt/l3/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {}, Lcom/smartdigimkt/x/l;->a()Lcom/smartdigimkt/x/l;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/smartdigimkt/d4/h;

    .line 55
    .line 56
    invoke-direct {v3, p0, p2, p1, v1}, Lcom/smartdigimkt/d4/h;-><init>(Lcom/smartdigimkt/d4/i;Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;Ljava/util/Map;Lcom/smartdigimkt/l3/a;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/smartdigimkt/b4/e;->b()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    new-instance v1, Lcom/smartdigimkt/x/d;

    .line 80
    .line 81
    invoke-direct {v1, v2, v3}, Lcom/smartdigimkt/x/d;-><init>(Lcom/smartdigimkt/x/l;Lcom/smartdigimkt/d4/h;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v2, v3}, Lcom/smartdigimkt/x/l;->a(Lcom/smartdigimkt/x/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/smartdigimkt/z4/d;->e()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    if-eqz p2, :cond_5

    .line 100
    .line 101
    :try_start_1
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 106
    .line 107
    .line 108
    invoke-interface {p2, v0}, Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;->onComplete(Lorg/json/JSONObject;)V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_3
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 117
    .line 118
    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    invoke-interface {p2, v0}, Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;->onComplete(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/smartdigimkt/sdk/core/SDKContext;->j()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    goto :goto_5

    .line 141
    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 142
    .line 143
    invoke-interface {p2, v0}, Lcom/smartdigimkt/sdk/api/ISDMAdManager$BidTokenCallBack;->onComplete(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_4
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/smartdigimkt/z4/d;->e()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :goto_5
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lcom/smartdigimkt/z4/d;->e()V

    .line 159
    .line 160
    .line 161
    throw p1
.end method

.method public final getDirectlyBidTokenJSONObject(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p3, :cond_6

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/smartdigimkt/g3/c;->a(Landroid/content/Context;)Lcom/smartdigimkt/g3/c;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/smartdigimkt/g3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/smartdigimkt/g3/c;->a(Landroid/content/Context;)Lcom/smartdigimkt/g3/c;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lcom/smartdigimkt/g3/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lez v0, :cond_5

    .line 82
    .line 83
    new-instance v0, Lorg/json/JSONObject;

    .line 84
    .line 85
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    .line 89
    .line 90
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, 0x0

    .line 98
    :cond_1
    :goto_1
    if-ge v3, v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    check-cast v4, Lcom/smartdigimkt/m3/i;

    .line 107
    .line 108
    iget v5, v4, Lcom/smartdigimkt/m3/i;->e:I

    .line 109
    .line 110
    if-lez v5, :cond_2

    .line 111
    .line 112
    iget-object v6, v4, Lcom/smartdigimkt/m3/i;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    :cond_2
    iget v5, v4, Lcom/smartdigimkt/m3/i;->d:I

    .line 118
    .line 119
    if-lez v5, :cond_1

    .line 120
    .line 121
    iget-object v4, v4, Lcom/smartdigimkt/m3/i;->b:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-lez p1, :cond_4

    .line 132
    .line 133
    const-string p1, "o_cl"

    .line 134
    .line 135
    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-lez p1, :cond_5

    .line 143
    .line 144
    const-string p1, "o_im"

    .line 145
    .line 146
    invoke-virtual {p3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    .line 149
    :cond_5
    return-object p3

    .line 150
    :catchall_0
    :cond_6
    return-object p2
.end method

.method public final getS2SBidToken(Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V
    .locals 12

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, Lcom/smartdigimkt/d4/f;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    invoke-direct {p2, p3, v0}, Lcom/smartdigimkt/d4/f;-><init>(Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {}, Lcom/smartdigimkt/h3/m;->b()Lcom/smartdigimkt/h3/m;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/smartdigimkt/h3/l;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Lcom/smartdigimkt/h3/l;-><init>(Lcom/smartdigimkt/h3/m;)V

    .line 39
    .line 40
    .line 41
    const/16 v0, 0x11

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/smartdigimkt/b4/e;->a(Ljava/lang/Runnable;JI)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/smartdigimkt/sdk/core/SDKContext;->getInstance()Lcom/smartdigimkt/sdk/core/SDKContext;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-boolean v6, v8, Lcom/smartdigimkt/sdk/core/SDKContext;->e:Z

    .line 53
    .line 54
    iget-boolean v7, v8, Lcom/smartdigimkt/sdk/core/SDKContext;->f:Z

    .line 55
    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    if-nez v7, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lcom/smartdigimkt/z4/d;->c()Lcom/smartdigimkt/z4/d;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/smartdigimkt/z4/d;->e()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/smartdigimkt/z4/m;->a()Lcom/smartdigimkt/z4/m;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/smartdigimkt/z4/m;->a(Ljava/lang/String;)Lcom/smartdigimkt/a5/e;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/smartdigimkt/j4/a;

    .line 77
    .line 78
    invoke-direct {v1, p1}, Lcom/smartdigimkt/j4/a;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, v1, Lcom/smartdigimkt/j4/a;->b:Lcom/smartdigimkt/a5/e;

    .line 82
    .line 83
    new-instance v0, Lcom/smartdigimkt/d4/d;

    .line 84
    .line 85
    invoke-direct {v0, p1, p2, p3}, Lcom/smartdigimkt/d4/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, v1, Lcom/smartdigimkt/j4/a;->c:Lcom/smartdigimkt/z4/l;

    .line 89
    .line 90
    new-instance p1, Lcom/smartdigimkt/j4/b;

    .line 91
    .line 92
    invoke-direct {p1, v1}, Lcom/smartdigimkt/j4/b;-><init>(Lcom/smartdigimkt/j4/a;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    new-instance p3, Lcom/smartdigimkt/d4/e;

    .line 100
    .line 101
    invoke-direct {p3, p1}, Lcom/smartdigimkt/d4/e;-><init>(Lcom/smartdigimkt/j4/b;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    :goto_0
    invoke-static {}, Lcom/smartdigimkt/b4/e;->a()Lcom/smartdigimkt/b4/e;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    new-instance v5, Lcom/smartdigimkt/d4/c;

    .line 113
    .line 114
    move-object v9, p1

    .line 115
    move-object v10, p2

    .line 116
    move-object v11, p3

    .line 117
    invoke-direct/range {v5 .. v11}, Lcom/smartdigimkt/d4/c;-><init>(ZZLcom/smartdigimkt/sdk/core/SDKContext;Ljava/lang/String;Ljava/util/Map;Lcom/smartdigimkt/sdk/api/ISDMAdManager$S2SBidTokenCallback;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v5}, Lcom/smartdigimkt/b4/e;->c(Ljava/lang/Runnable;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
