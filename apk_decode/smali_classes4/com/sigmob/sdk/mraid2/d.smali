.class public Lcom/sigmob/sdk/mraid2/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/mraid2/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Mraid2Bridge"

.field private static e:Lcom/sigmob/sdk/mraid2/p;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/sigmob/sdk/mraid2/k;

.field private d:Lcom/sigmob/sdk/mraid2/c;

.field private f:Lcom/sigmob/sdk/mraid2/f;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Z

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sigmob/sdk/mraid2/d;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->g:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sigmob/sdk/mraid2/d;->j:Z

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/czhj/sdk/common/ThreadPool/ThreadPoolFactory;->getFixIOExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sigmob/sdk/mraid2/C;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/mraid2/C;-><init>(Lcom/sigmob/sdk/mraid2/d;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/d;Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/rtb/BidResponse;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, v3, Lcom/sigmob/sdk/base/models/rtb/Ad;->materials:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object v7

    iget-object v8, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_1

    iget-object v8, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/rtb/Template;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->context(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Template;

    move-result-object v8

    iget-object v9, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    iget-object v9, v9, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    iput-object v9, v8, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->main_template(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    :cond_1
    iget-object v8, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v8, :cond_2

    iget-object v8, v8, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v4, :cond_2

    iget-object v4, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/rtb/Template;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->context(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Template;

    move-result-object v4

    iget-object v8, v7, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template:Lcom/sigmob/sdk/base/models/rtb/Template;

    iget-object v8, v8, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    iput-object v8, v4, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->sub_template(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    :cond_2
    invoke-virtual {v7, v5}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->html_snippet(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/rtb/MaterialMeta$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/MaterialMeta;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/rtb/Ad;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->materials(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/rtb/Ad$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v2, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    invoke-direct {v2}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/Template;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/Template;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->context(Lcom/czhj/wire/okio/ByteString;)Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Template;

    move-result-object v1

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    iput-object v3, v1, Lcom/sigmob/sdk/base/models/rtb/Template;->templateId:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->scene:Lcom/sigmob/sdk/base/models/rtb/Template;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/Template;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/Template$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/Template$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/Template;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->scene(Lcom/sigmob/sdk/base/models/rtb/Template;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    :cond_6
    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->slotAdSetting:Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->slot_ad_setting(Lcom/sigmob/sdk/base/models/rtb/SlotAdSetting;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    :cond_7
    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->bidding_response:Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;->newBuilder()Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/rtb/BiddingResponse$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->bidding_response(Lcom/sigmob/sdk/base/models/rtb/BiddingResponse;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->request_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->uid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->uid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    iget p1, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;->expiration_time:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->expiration_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    :cond_9
    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->ads(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/rtb/BidResponse$Builder;->build()Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/p;)Lcom/sigmob/sdk/mraid2/p;
    .locals 0

    .line 4
    sput-object p0, Lcom/sigmob/sdk/mraid2/d;->e:Lcom/sigmob/sdk/mraid2/p;

    return-object p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "data"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "init"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "destroy"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-interface {p3}, Lcom/sigmob/sdk/mraid2/f;->b()V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-interface {p3}, Lcom/sigmob/sdk/mraid2/f;->a()V

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3, p4}, Lcom/sigmob/sdk/mraid2/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3}, Lcom/sigmob/sdk/mraid2/k;->c(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    const-string v0, "vid"

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "data"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWXProgramRes()Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->market_url:Ljava/lang/String;

    invoke-static {v7}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    if-eqz v7, :cond_3

    const/4 v10, 0x3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getInteractionType()I

    move-result v10

    :goto_2
    if-eqz v7, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "market_url"

    iget-object v7, v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->market_url:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->type:Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/czhj/wire/Wire;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "type"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->app_package_name:Ljava/lang/String;

    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "app_package_name"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v4, v4, Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;->appstore_package_name:Ljava/lang/String;

    invoke-static {v4}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "appstore_package_name"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v4, "market"

    :goto_3
    invoke-virtual {p3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    const/4 v4, 0x7

    if-ne v10, v4, :cond_7

    invoke-static {v5}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "wx_app_id"

    iget-object v7, v5, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_id:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wx_app_username"

    iget-object v7, v5, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_username:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wx_app_path"

    iget-object v7, v5, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_app_path:Ljava/lang/String;

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wx_business_type"

    iget-object v7, v5, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_business_type:Ljava/lang/Integer;

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "wx_ext_msg"

    iget-object v5, v5, Lcom/sigmob/sdk/base/models/rtb/WXProgramRes;->wx_ext_msg:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "program"

    goto :goto_3

    :cond_7
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "url"

    if-eqz v4, :cond_8

    const/4 v4, 0x2

    if-eq v10, v4, :cond_8

    invoke-virtual {v6, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v1, "default_url"

    invoke-virtual {p3, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isSkipSigmobBrowser()Z

    move-result v1

    xor-int/2addr v1, v9

    const-string v3, "in_app"

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "interaction_type"

    invoke-virtual {p3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v1, v9

    const-string v3, "parse_302"

    invoke-virtual {p3, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v6, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {p3, v0, v6}, Lcom/sigmob/sdk/mraid2/k;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V

    :cond_9
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 3

    .line 17
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "delay"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "event"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ltz v0, :cond_1

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/d;->a()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    new-instance v2, Lcom/sigmob/sdk/mraid2/D;

    invoke-direct {v2, p1, p2}, Lcom/sigmob/sdk/mraid2/D;-><init>(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    int-to-long p1, v0

    invoke-virtual {v1, v2, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notify"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/d;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/d;->i:Z

    return p0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/mraid2/d;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/sigmob/sdk/mraid2/d;->j:Z

    return p1
.end method

.method private static synthetic b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3, p4}, Lcom/sigmob/sdk/mraid2/k;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "data"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v2, "vid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v1, v0, p3}, Lcom/sigmob/sdk/mraid2/k;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 4

    .line 5
    const-string v0, "vid"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_2
    :try_start_0
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFeedbackByVid: error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Mraid2Bridge"

    invoke-static {v1, p2, v0}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1, v2}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v1

    :goto_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-interface {p1, v1}, Lcom/sigmob/sdk/mraid2/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_3
    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object p1

    const-string v0, "bidResponse"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v1}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/mraid2/d;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/sigmob/sdk/mraid2/d;->j:Z

    return p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/f;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    return-object p0
.end method

.method public static synthetic c(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3, p4}, Lcom/sigmob/sdk/mraid2/k;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3}, Lcom/sigmob/sdk/mraid2/k;->d(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V
    .locals 5

    .line 6
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "event"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdRequest()Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setOptions(Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/h;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCampid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/h;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->setLastCrid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/LoadAdRequest;

    new-instance p2, Lcom/sigmob/sdk/mraid2/d$2;

    invoke-direct {p2, p0, p1, v1}, Lcom/sigmob/sdk/mraid2/d$2;-><init>(Lcom/sigmob/sdk/mraid2/d;Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/sigmob/sdk/base/network/f;->a(Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/network/f$a;)V

    :cond_3
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/k;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic d(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->j()Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3}, Lcom/sigmob/sdk/mraid2/k;->b(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 1

    .line 5
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "vid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/k;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/mraid2/d;)Lcom/sigmob/sdk/mraid2/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    return-object p0
.end method

.method private e(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3}, Lcom/sigmob/sdk/mraid2/k;->g(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getScrollTouchListener()Lcom/sigmob/sdk/mraid2/v;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-interface {v0, v1, p1}, Lcom/sigmob/sdk/mraid2/v;->a(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic f(Lcom/sigmob/sdk/mraid2/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/mraid2/d;->g:Ljava/util/List;

    return-object p0
.end method

.method private f(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    invoke-static {p3}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "visible"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getScrollTouchListener()Lcom/sigmob/sdk/mraid2/v;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/v;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic g(Lcom/sigmob/sdk/mraid2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->o()V

    return-void
.end method

.method private g(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    invoke-interface {v0, p3}, Lcom/sigmob/sdk/mraid2/k;->f(Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getScrollTouchListener()Lcom/sigmob/sdk/mraid2/v;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/v;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic h()Lcom/sigmob/sdk/mraid2/p;
    .locals 1

    .line 2
    sget-object v0, Lcom/sigmob/sdk/mraid2/d;->e:Lcom/sigmob/sdk/mraid2/p;

    return-object v0
.end method

.method public static synthetic h(Lcom/sigmob/sdk/mraid2/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->b(Ljava/util/List;)V

    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid2/k;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/mraid2/d;->i:Z

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    new-instance v1, Lcom/sigmob/sdk/mraid2/B;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid2/B;-><init>(Lcom/sigmob/sdk/mraid2/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "red"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "green"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "blue"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "alpha"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/sigmob/sdk/mraid2/f;->a(IIII)V

    :cond_0
    return-void
.end method

.method private j()Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdRequest()Lcom/sigmob/sdk/base/models/LoadAdRequest;

    move-result-object v0

    return-object v0
.end method

.method private j(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "uniqId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sigmob/sdk/mraid2/d;->h:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/k;->b()V

    return-void
.end method

.method private k(Lorg/json/JSONObject;)V
    .locals 5

    .line 2
    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d;->a()Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sigmob/sdk/mraid2/d;->h:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->getMraidWebViews()Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/mraid2/c;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid2/c;->getMraidBridge()Lcom/sigmob/sdk/mraid2/d;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v0, v1, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/k;->c()V

    return-void
.end method

.method private l(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "uniqId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sigmob/sdk/mraid2/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "~"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid2/c;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/k;->d()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/k;->a()V

    return-void
.end method

.method private synthetic o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/f;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Z)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d;->e()V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getAdSize()Lcom/sigmob/sdk/base/common/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/base/common/g;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/mraid2/d;->f()V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/util/List;)Lcom/sigmob/sdk/base/models/rtb/BidResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleJsLoad: error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Mraid2Bridge"

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/mraid2/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent({\"exposure\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "});"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "index"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.notifyPageChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mraidbridge.setSafeAreaInsets("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/g;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/g;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/g;->b()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v0

    move p1, v1

    :goto_0
    const-string v1, "width"

    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "screenSize"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/rtb/BidResponse;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "bidResponse"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 1

    .line 11
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollContainer(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid2/x;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    new-instance v0, Lcom/sigmob/sdk/mraid2/d$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/mraid2/d$1;-><init>(Lcom/sigmob/sdk/mraid2/d;)V

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/mraid2/x;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;)V
    .locals 8

    .line 12
    const-string v0, "Mraid2Bridge"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostMessage: data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "event"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "subEvent"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePostMessage: event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "useCustomClose"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xf

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "openByVid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "backgroundColor"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "webView"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "belowSubview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "animation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "mraidLoadAd"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "unsubscribe"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v6, "subscribe"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1b

    goto/16 :goto_1

    :sswitch_9
    const-string v6, "visible"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto/16 :goto_1

    :sswitch_a
    const-string v6, "touchMove"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v6, "vpaid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_c
    const-string v6, "timer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_d
    const-string v6, "ready"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_1

    :sswitch_e
    const-string v6, "close"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v6, "addSubview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v6, "open"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto/16 :goto_1

    :sswitch_11
    const-string v6, "publish"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1d

    goto/16 :goto_1

    :sswitch_12
    const-string v6, "curPlayAd"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string v6, "motionView"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x18

    goto/16 :goto_1

    :sswitch_14
    const-string v6, "mraidJsLoaded"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v1

    goto/16 :goto_1

    :sswitch_15
    const-string v6, "touchEnd"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x16

    goto :goto_1

    :sswitch_16
    const-string v6, "unload"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_17
    const-string v6, "reward"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_1

    :sswitch_18
    const-string v6, "motion"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x17

    goto :goto_1

    :sswitch_19
    const-string v6, "dispatch_after"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1a
    const-string v6, "useScrollView"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto :goto_1

    :sswitch_1b
    const-string v6, "touchStart"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    goto :goto_1

    :sswitch_1c
    const-string v6, "blurEffect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1a

    goto :goto_1

    :sswitch_1d
    const-string v6, "feedbackByVid"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->k(Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->j(Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void

    :pswitch_2
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->l(Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/sigmob/sdk/mraid2/d;->d(Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1, p2, v4}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->i(Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/sigmob/sdk/mraid2/d;->e(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/sigmob/sdk/mraid2/d;->g(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_7
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->e(Lorg/json/JSONObject;)V

    return-void

    :pswitch_8
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->f(Lorg/json/JSONObject;)V

    return-void

    :pswitch_9
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->g(Lorg/json/JSONObject;)V

    return-void

    :pswitch_a
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->h(Lorg/json/JSONObject;)V

    return-void

    :pswitch_b
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_c
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_d
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/sigmob/sdk/mraid2/d;->b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_e
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->c(Lorg/json/JSONObject;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2, v5}, Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_10
    invoke-direct {p0, p1, p2, v5}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_11
    invoke-direct {p0, p1, p2, v5}, Lcom/sigmob/sdk/mraid2/d;->d(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_12
    invoke-direct {p0, v5}, Lcom/sigmob/sdk/mraid2/d;->d(Lorg/json/JSONObject;)V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->l()V

    return-void

    :pswitch_14
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->k()V

    return-void

    :pswitch_15
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->n()V

    return-void

    :pswitch_16
    invoke-direct {p0, p1, p2, v5}, Lcom/sigmob/sdk/mraid2/d;->b(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_17
    invoke-direct {p0, p1, p2, v5, v3}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :pswitch_18
    invoke-direct {p0, p1, v5}, Lcom/sigmob/sdk/mraid2/d;->b(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    return-void

    :pswitch_19
    invoke-direct {p0, p1, v5}, Lcom/sigmob/sdk/mraid2/d;->c(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    return-void

    :pswitch_1a
    invoke-direct {p0, p1, v5}, Lcom/sigmob/sdk/mraid2/d;->a(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    return-void

    :pswitch_1b
    invoke-direct {p0, p1, p2, v5}, Lcom/sigmob/sdk/mraid2/d;->f(Lcom/sigmob/sdk/mraid2/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_1c
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->m()V

    return-void

    :pswitch_1d
    invoke-direct {p0}, Lcom/sigmob/sdk/mraid2/d;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePostMessage: error = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/sigmob/sdk/base/utils/k;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75cc204b -> :sswitch_1d
        -0x6b085328 -> :sswitch_1c
        -0x5fda5b9d -> :sswitch_1b
        -0x504ff407 -> :sswitch_1a
        -0x48ae1629 -> :sswitch_19
        -0x3fad404a -> :sswitch_18
        -0x37b0b0d1 -> :sswitch_17
        -0x32182101 -> :sswitch_16
        -0x30d98ae4 -> :sswitch_15
        -0x2b1a66bb -> :sswitch_14
        -0x2af75c85 -> :sswitch_13
        -0x1275ab29 -> :sswitch_12
        -0xe0762f1 -> :sswitch_11
        0x34264a -> :sswitch_10
        0x26d3104 -> :sswitch_f
        0x5a5ddf8 -> :sswitch_e
        0x675d9a3 -> :sswitch_d
        0x6940745 -> :sswitch_c
        0x6b33842 -> :sswitch_b
        0x15abd7b0 -> :sswitch_a
        0x1bd1f072 -> :sswitch_9
        0x1eafdd4a -> :sswitch_8
        0x22c42ad1 -> :sswitch_7
        0x29473000 -> :sswitch_6
        0x42ab1b84 -> :sswitch_5
        0x4677fb74 -> :sswitch_4
        0x48ecb019 -> :sswitch_3
        0x4cb7f6d5 -> :sswitch_2
        0x5a949810 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/sigmob/sdk/mraid2/f;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    return-void
.end method

.method public a(Lcom/sigmob/sdk/mraid2/k;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/d;->i:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID JS Not Load attached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sigmob/sdk/mraid2/x;->b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "state"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "vdPlayStateChanged"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 5

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    int-to-float p2, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p2, v2

    float-to-double v3, p2

    invoke-virtual {v1, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "duration"

    int-to-float p2, p3

    div-float/2addr p2, v2

    float-to-double p2, p2

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "vdPlayCurrentTime"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .locals 4

    .line 23
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    int-to-float p2, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "width"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "vdReadyToPlay"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "message"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "uniqueId"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wvError"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to inject Javascript into MRAID WebView while was not attached: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0, p1, p2}, Lcom/sigmob/sdk/mraid2/x;->b(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/rtb/BidResponse;ILjava/lang/String;)V
    .locals 4

    .line 26
    const-string v0, "message"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "data"

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    invoke-static {p2, v2, v3, v3}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v2

    :goto_0
    const-string v2, "code"

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "event"

    invoke-virtual {p3, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notify"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "vdPlayError"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "uniqueId"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p3, "args"

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "onChangeFired"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "event"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "onChangeEvent"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p2, "args"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "onChangeEvent"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "bindData"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "viewable"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/d;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/d;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v3

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/rtb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "state"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "vdLoadStateChanged"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "notify"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.onStorageChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/sigmob/sdk/mraid2/d;->i:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->g:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "wvFinished"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 4

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uniqueId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "currentTime"

    int-to-float p2, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "vdPlayToEnd"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    const-string v0, "mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 2
    const-string v0, "orientation"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/czhj/sdk/common/ClientMetadata;->getInstance()Lcom/czhj/sdk/common/ClientMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/czhj/sdk/common/ClientMetadata;->getOrientationInt()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "locked"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.fireChangeEvent("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fire_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notify"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdkVersion"

    const-string v2, "4.25.12"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notify"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 2
    sget-object v0, Lcom/sigmob/sdk/mraid2/d;->e:Lcom/sigmob/sdk/mraid2/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/sigmob/sdk/mraid2/d;->e:Lcom/sigmob/sdk/mraid2/p;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->d:Lcom/sigmob/sdk/mraid2/c;

    :cond_1
    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->c:Lcom/sigmob/sdk/mraid2/k;

    iput-object v1, p0, Lcom/sigmob/sdk/mraid2/d;->f:Lcom/sigmob/sdk/mraid2/f;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "notify"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.fireChangeEvent("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/mraid2/d;->a(Ljava/lang/String;)V

    return-void
.end method
