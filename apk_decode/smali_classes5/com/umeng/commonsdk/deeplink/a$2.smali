.class Lcom/umeng/commonsdk/deeplink/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/deeplink/a;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/umeng/commonsdk/deeplink/a;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/deeplink/a;Lcom/umeng/commonsdk/deeplink/OnAttributionListener;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/commonsdk/deeplink/a$2;->c:Lcom/umeng/commonsdk/deeplink/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/umeng/commonsdk/deeplink/a$2;->a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/umeng/commonsdk/deeplink/a$2;->b:Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/deeplink/a$2;->a:Lcom/umeng/commonsdk/deeplink/OnAttributionListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/umeng/commonsdk/deeplink/a$2;->b:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/umeng/commonsdk/deeplink/OnAttributionListener;->onAttributionSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    return-void
.end method
