.class public final synthetic Lcom/sigmob/sdk/base/common/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/L;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/L;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/L;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/common/L;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/common/L;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/sigmob/sdk/base/common/L;->f:J

    iput-object p8, p0, Lcom/sigmob/sdk/base/common/L;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/L;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/L;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/L;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/common/L;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/L;->e:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sigmob/sdk/base/common/L;->f:J

    iget-object v7, p0, Lcom/sigmob/sdk/base/common/L;->g:Lorg/json/JSONObject;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/sigmob/sdk/base/common/ad;->g(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method
