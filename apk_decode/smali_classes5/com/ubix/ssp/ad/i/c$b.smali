.class Lcom/ubix/ssp/ad/i/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$b;->b:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$b;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$b;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "native_click_map_key"

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/c$b;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v1, "__CLICK_AREA__"

    const-string v3, "1"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$b;->b:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v1, v0, p1, p2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Ljava/util/HashMap;Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$b;->b:Lcom/ubix/ssp/ad/i/c;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$b;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v1, v3, v2, v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return v0
.end method
