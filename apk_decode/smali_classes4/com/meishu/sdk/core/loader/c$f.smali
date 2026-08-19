.class public Lcom/meishu/sdk/core/loader/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/loader/c;->loadGDTAD(Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/utils/z<",
        "Lcom/meishu/sdk/core/utils/q0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/meishu/sdk/core/loader/c;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/loader/c$f;->c:Lcom/meishu/sdk/core/loader/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/core/loader/c$f;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/core/loader/c$f;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "onResponse: \u4ecedUrl\u8bf7\u6c42clickId\u5931\u8d25"

    .line 2
    .line 3
    const-string v1, "AdLoader"

    .line 4
    .line 5
    check-cast p1, Lcom/meishu/sdk/core/utils/q0;

    .line 6
    .line 7
    :try_start_0
    iget-boolean v2, p1, Lcom/meishu/sdk/core/utils/q0;->a:Z

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcom/meishu/sdk/core/utils/v;->a:Lcom/google/gson/Gson;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/meishu/sdk/core/utils/q0;->c:Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Lcom/meishu/sdk/core/domain/ClickIdResponse;

    .line 16
    .line 17
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/meishu/sdk/core/domain/ClickIdResponse;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$f;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/ClickIdResponse;->getData()Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->getClickid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setClickid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$f;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/ClickIdResponse;->getData()Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/ClickIdResponse$ClickIdInfo;->getDstlink()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    filled-new-array {p1}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/domain/MeishuAdInfo;->setdUrl([Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/c$f;->c:Lcom/meishu/sdk/core/loader/c;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$f;->a:Lcom/meishu/sdk/core/domain/MeishuAdInfo;

    .line 61
    .line 62
    iget-object v2, p0, Lcom/meishu/sdk/core/loader/c$f;->b:Ljava/util/Map;

    .line 63
    .line 64
    invoke-static {p1, v0, v2}, Lcom/meishu/sdk/core/loader/c;->access$600(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/domain/MeishuAdInfo;Ljava/util/Map;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/meishu/sdk/core/loader/c$f;->c:Lcom/meishu/sdk/core/loader/c;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :goto_1
    const-string v0, "onResponse: "

    .line 78
    .line 79
    invoke-static {v1, v0, p1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$f;->c:Lcom/meishu/sdk/core/loader/c;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onFailure(Ljava/io/IOException;)V
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onFailure: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AdLoader"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/core/loader/c$f;->c:Lcom/meishu/sdk/core/loader/c;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/loader/c;->handleNoAd(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
