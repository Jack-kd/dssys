.class Lcom/ubix/ssp/ad/i/c$h;
.super Lcom/ubix/ssp/ad/g/k/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->t(Lcom/ubix/ssp/ad/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Lcom/ubix/ssp/ad/g/k/g;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/ubix/ssp/ad/i/c$h;->a:I

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_5

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    if-nez p1, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    move-wide v2, p4

    :goto_0
    div-long/2addr v0, v2

    long-to-int p1, v0

    iget v0, p0, Lcom/ubix/ssp/ad/i/c$h;->a:I

    mul-int/lit8 v1, v0, 0x19

    if-lt p1, v1, :cond_5

    const/4 p1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x1388

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    goto :goto_2

    :cond_1
    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x13a1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x13ba

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x13d3

    goto :goto_1

    :cond_4
    :goto_2
    iget v0, p0, Lcom/ubix/ssp/ad/i/c$h;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ubix/ssp/ad/i/c$h;->a:I

    :cond_5
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    if-eqz p1, :cond_6

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoProgressUpdate(JJ)V

    :cond_6
    return-void
.end method

.method public a(ILcom/ubix/ssp/open/AdError;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v2, 0x1450

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoError(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/view/View;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "interaction_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p3, :cond_0

    const-string p1, "__CLICK_AREA__"

    const-string v0, "1"

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CLICK_TRIGGER__"

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "native_custom_confirm_window_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    move-object v2, p2

    move-object v3, p3

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/ubix/ssp/ad/g/c;

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v1, 0x13ec

    invoke-virtual {p1, v0, v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    const/16 v1, 0x1450

    invoke-virtual {p1, v0, v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "lst_str"

    :try_start_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "lst_res"

    :try_start_2
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 2

    const-string p1, "lst_str"

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoStart()V

    :cond_1
    return-void
.end method

.method public j(I)V
    .locals 2

    const-string p1, "lst_res"

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$h;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$h;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "video_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;->onVideoResume()V

    :cond_1
    return-void
.end method
