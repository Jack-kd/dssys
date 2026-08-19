.class public Lcom/ubix/ssp/ad/i/c;
.super Lcom/ubix/ssp/ad/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/i/c$q;
    }
.end annotation


# static fields
.field static C:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static D:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private E:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/ubix/ssp/ad/g/g;

.field private G:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private H:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/i/c;->C:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ubix/ssp/ad/i/c;->D:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/ubix/ssp/ad/g/g;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/c;->H:Z

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ubix/ssp/ad/i/c;->E:Ljava/lang/ref/SoftReference;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c;->F:Lcom/ubix/ssp/ad/g/g;

    const/4 p4, 0x2

    iput p4, p0, Lcom/ubix/ssp/ad/a;->u:I

    invoke-virtual {p0, p3}, Lcom/ubix/ssp/ad/i/c;->q(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_cur"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ubix_sp_native_max_volume"

    invoke-static {p1, p4, p3, v0}, Lcom/ubix/ssp/ad/e/a0/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    sget-object p3, Lcom/ubix/ssp/ad/i/c;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    sget-object p3, Lcom/ubix/ssp/ad/i/c;->C:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/ubix/ssp/ad/g/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ubix/ssp/ad/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ubix/ssp/ad/i/c;->H:Z

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c;->E:Ljava/lang/ref/SoftReference;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c;->F:Lcom/ubix/ssp/ad/g/g;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/c;->q(I)V

    return-void
.end method

.method private declared-synchronized a(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v0, 0xde378

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const v1, 0xde314

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    new-instance v1, Lcom/ubix/ssp/ad/i/c$l;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/ubix/ssp/ad/i/c$l;-><init>(Lcom/ubix/ssp/ad/i/c;Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 9

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    const-string v2, "native_click_map_key"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const-string v1, "__CUSTOM_CHECK__"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "__CLICK_AREA__"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "__CLICK_TRIGGER__"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v6, v0

    const-string v0, "shouldClick"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "native_custom_confirm_window_listener_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move-object v3, p0

    move-object v5, p1

    move-object v4, p2

    move-object v7, p3

    move-object v8, v0

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/ubix/ssp/ad/g/c;

    goto :goto_0

    :goto_1
    invoke-direct/range {v3 .. v8}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 7

    .line 10
    const-string v0, ""

    const-string v1, "_"

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "native_click_map_key"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    const-string v3, "__WIDTH__"

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "__HEIGHT__"

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "__IMP_AREA__"

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1, v4, v2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/ubix/ssp/ad/i/c;->q(Lcom/ubix/ssp/ad/d/a;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "native_exposed_key"

    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->x()V

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/i/c;->s(Lcom/ubix/ssp/ad/d/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/ad/d/a;)V

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->y()V

    const-string p1, "onAdExposed in"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdExposed()V

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdExposed()V

    :cond_3
    const-string p1, "onAdExposed out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->f(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "\u6587\u4ef6\u5df2\u7ecf\u8fc7\u671f"

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lcom/ubix/ssp/ad/e/a0/a0/a;->d(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->d(Lcom/ubix/ssp/open/AdError;)V

    const-string p2, "onAdExposeFailed in"

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    invoke-interface {p3, p1}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_5
    if-eqz p4, :cond_6

    invoke-interface {p4, p1}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdExposeFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_6
    const-string p1, "onAdExposeFailed out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_7
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 11
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/i/c$b;

    invoke-direct {v0, p0, p2}, Lcom/ubix/ssp/ad/i/c$b;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/ubix/ssp/ad/i/c$c;

    invoke-direct {v0, p0, p2, p5}, Lcom/ubix/ssp/ad/i/c$c;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    new-instance p1, Lcom/ubix/ssp/ad/i/c$d;

    invoke-direct {p1, p0, p5}, Lcom/ubix/ssp/ad/i/c$d;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            "Lcom/ubix/ssp/ad/g/c;",
            ")V"
        }
    .end annotation

    .line 14
    iget v0, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v1

    const/16 v2, 0x2e

    const-string v3, "TRUE"

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/ubix/ssp/ad/e/s/d;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/ubix/ssp/ad/e/s/d;->c(I)Lcom/ubix/ssp/ad/e/s/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/a;->b()Lcom/ubix/ssp/ad/e/s/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/s/g/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "__NO_CLICK_CONFIRM_KEY__"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/e/s/g/b;->g()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FALSE"

    invoke-virtual {p3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    new-instance v0, Lcom/ubix/ssp/ad/i/c$f;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/ubix/ssp/ad/i/c$f;-><init>(Lcom/ubix/ssp/ad/i/c;ILandroid/view/View;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {p0, p1, v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/a$y;)V

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v4 .. v10}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Lcom/ubix/ssp/ad/g/c;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string p4, "native_core_view"

    invoke-virtual {p2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p4, p2, Lcom/ubix/ssp/ad/d/f;

    if-eqz p4, :cond_2

    check-cast p2, Lcom/ubix/ssp/ad/d/f;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/f;->b()V

    :cond_2
    const-string p2, "__MULTI_CLICK_KEY__"

    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string p2, "native_click_map_key"

    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 2

    .line 15
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a()Lcom/ubix/ssp/ad/e/a0/y/e/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a(F)Lcom/ubix/ssp/ad/e/a0/y/e/c;

    move-result-object p3

    iget v0, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    new-instance v1, Lcom/ubix/ssp/ad/i/c$q;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/ubix/ssp/ad/i/c$q;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p3, v0, p2, v1}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a(ILandroid/view/View;Lcom/ubix/ssp/ad/e/a0/y/e/a;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 13

    .line 16
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "custom_native_container"

    invoke-direct {p0, v1, v2, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    const-string v1, "custom_shake_sensor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->Z()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-instance v3, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->W()D

    move-result-wide v5

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->F()[I

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->U()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->L0()D

    move-result-wide v9

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->C0()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->D0()Z

    move-result v12

    invoke-direct/range {v3 .. v12}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;D[IIDZZ)V

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->W()D

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->T()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/ubix/ssp/ad/d/l;->L0()D

    move-result-wide v9

    invoke-direct/range {v4 .. v10}, Lcom/ubix/ssp/ad/e/a0/s;-><init>(Landroid/content/Context;DID)V

    move-object v3, v4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1, v1, v3}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "F",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "native_notify_id_key"

    invoke-direct {p0, v0, v2, v1}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "interaction_listener_key"

    invoke-direct {p0, v0, v1, p6}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/c;->q(Lcom/ubix/ssp/ad/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p5, p6}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    :cond_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ubix/ssp/ad/i/c$a;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/i/c$a;-><init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    move-object p1, p0

    move-object p5, p4

    move-object p4, p3

    move-object p3, v4

    :goto_0
    invoke-direct/range {p1 .. p6}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "native_notify_id_key"

    invoke-direct {p0, v0, v2, v1}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "interaction_listener_key"

    invoke-direct {p0, v0, v1, p5}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p5, v0}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    :cond_0
    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/i/c$e;

    invoke-direct {v0, p0, p2, p1, p5}, Lcom/ubix/ssp/ad/i/c$e;-><init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Lcom/ubix/ssp/ad/d/l;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->I()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2

    const/16 v1, 0x202

    if-eq v0, v1, :cond_1

    const/16 v1, 0x300

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x300

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p4

    move-object/from16 v3, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void

    :cond_1
    move-object/from16 v4, p7

    invoke-direct {p0, p1, p3, p2, v4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void

    :cond_2
    move-object/from16 v4, p7

    new-instance v0, Lcom/ubix/ssp/ad/i/c$m;

    move-object v1, p0

    move-object v5, p1

    move-object v2, p2

    move-object/from16 v6, p4

    move-object/from16 v3, p5

    move-object v7, v4

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/ubix/ssp/ad/i/c$m;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/l;Ljava/util/List;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :try_start_0
    sget-object v4, Lcom/ubix/ssp/ad/i/c;->C:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p1, Lcom/ubix/ssp/ad/d/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->J()I

    move-result v5

    if-ltz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->J()I

    move-result v5

    if-lt v4, v5, :cond_5

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_5
    const v4, 0xde314

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_7
    new-instance v4, Lcom/ubix/ssp/ad/e/a0/o;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->u0()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->B()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v7

    :goto_1
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->t0()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->A()Ljava/lang/String;

    move-result-object v7

    :cond_9
    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->i()I

    move-result v8

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->j()I

    move-result v9

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->h()I

    move-result v10

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->p0()Z

    move-result v11

    invoke-direct/range {v4 .. v11}, Lcom/ubix/ssp/ad/e/a0/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    new-instance v5, Lcom/ubix/ssp/ad/i/c$n;

    invoke-direct {v5, p0, p3, v4, p2}, Lcom/ubix/ssp/ad/i/c$n;-><init>(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/e/a0/o;Lcom/ubix/ssp/ad/d/l;)V

    invoke-virtual {p3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/ubix/ssp/ad/i/c$o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, v4

    move-object/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/ubix/ssp/ad/i/c$o;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/e/a0/o;)V

    move-object v4, v5

    invoke-virtual {v4, v0}, Lcom/ubix/ssp/ad/e/a0/o;->setCallback(Lcom/ubix/ssp/ad/e/a0/o$f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private a(Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "I",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ubix/ssp/ad/i/c$p;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/ubix/ssp/ad/i/c$p;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Ljava/util/HashMap;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/i/c;->a(Ljava/util/HashMap;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ubix/ssp/open/nativee/NativeAd;",
            ">;)V"
        }
    .end annotation

    .line 37
    iget v0, p0, Lcom/ubix/ssp/ad/a;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->u()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->F:Lcom/ubix/ssp/ad/g/g;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/g;->a(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/HashMap;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 38
    const-string v0, "--------touchXY"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string p2, "__DOWN_X__"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "__DOWN_Y__"

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "__RAW_DOWN_X__"

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p3, "__RAW_DOWN_Y__"

    goto/16 :goto_0

    :cond_0
    :try_start_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "__UP_X__"

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "__UP_Y__"

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "__WIDTH__"

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v0, "__HEIGHT__"

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "__RAW_UP_X__"

    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p2, "__RAW_UP_Y__"

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p3, "__CLICK_XY__"

    :goto_0
    :try_start_b
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/i/c;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/i/c;->H:Z

    return p1
.end method

.method public static synthetic b(Lcom/ubix/ssp/ad/i/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/ubix/ssp/ad/i/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method private o(I)I
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xfa4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x177c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x177d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2329

    if-eq p1, v0, :cond_1

    const/16 v0, 0x232a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    :pswitch_0
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private p(Lcom/ubix/ssp/ad/d/a;)Ljava/lang/String;
    .locals 4

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->u:Lcom/ubix/ssp/ad/e/y/a/a$b$m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "3"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$m;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$m;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ubix/ssp/ad/e/a0/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/c;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ubix/ssp/ad/d/l;->H()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    const-string p1, "2"

    return-object p1

    :cond_2
    const-string p1, "1"

    return-object p1

    :cond_3
    :try_start_2
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    return-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    const-string p1, "0"

    return-object p1
.end method

.method private q(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    const-string v0, "native_exposed_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private r(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/i/c;->p(I)Lcom/ubix/ssp/ad/d/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/d/l;->l0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p1, Lcom/ubix/ssp/ad/d/a;->j:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public A()V
    .locals 3

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->A()V

    iget-boolean v0, p0, Lcom/ubix/ssp/ad/i/c;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/i/c;->H:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_INSTALLED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/Context;)Lcom/ubix/ssp/ad/e/a0/m;

    move-result-object v1

    new-instance v2, Lcom/ubix/ssp/ad/i/c$g;

    invoke-direct {v2, p0}, Lcom/ubix/ssp/ad/i/c$g;-><init>(Lcom/ubix/ssp/ad/i/c;)V

    invoke-virtual {v1, v2, v0}, Lcom/ubix/ssp/ad/e/a0/m;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/ad/a;->i:I

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/i/c;->m(I)V

    return-void
.end method

.method public D()V
    .locals 0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->u()V

    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/b;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/b;Lcom/ubix/ssp/ad/d/l;)V

    return-void
.end method

.method public a(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 5
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(ILcom/ubix/ssp/ad/d/a;)V

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "native_click_map_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p1}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 5

    .line 7
    const-string v0, "onAdClicked in"

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p2, v0

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v3, "native_parent_view_key"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "interaction_listener_key"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runClickCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";canRun="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->n0()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcom/ubix/ssp/ad/d/l;->m0()Z

    move-result p1

    if-nez p1, :cond_7

    instance-of p1, v1, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-eqz p1, :cond_6

    check-cast v1, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    invoke-interface {v1, p2}, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;->onAdClicked(Landroid/view/View;)V

    goto :goto_2

    :cond_6
    instance-of p1, v1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    if-eqz p1, :cond_7

    check-cast v1, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;

    invoke-interface {v1, p2}, Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;->onAdClicked(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    const-string p1, "onAdClicked out"

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 13

    .line 8
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ubix/ssp/open/AdError;

    invoke-super {p0, v0}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ubix/ssp/open/AdError;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/c;->e(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubix/ssp/ad/d/a;

    iget-object v2, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v3, v1, Lcom/ubix/ssp/ad/d/a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget-object v3, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v3

    new-instance v4, Lcom/ubix/ssp/ad/d/h;

    invoke-direct {v4}, Lcom/ubix/ssp/ad/d/h;-><init>()V

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/a;->g(Lcom/ubix/ssp/ad/d/a;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ubix/ssp/ad/d/h;->b(J)V

    iget-object v5, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->e(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/ubix/ssp/ad/d/h;->a(Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {v4, p0}, Lcom/ubix/ssp/ad/d/h;->a(Lcom/ubix/ssp/ad/i/c;)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->I()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->b(I)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->g(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->m(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->t:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->b(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->h:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->c(Ljava/lang/String;)V

    iget v6, v1, Lcom/ubix/ssp/ad/d/a;->p:I

    invoke-direct {p0, v6}, Lcom/ubix/ssp/ad/i/c;->o(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->a(I)V

    invoke-virtual {p0, v2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->b(Z)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->x0()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->o:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->f(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->n:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->h(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->m:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->l(Ljava/lang/String;)V

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz v7, :cond_6

    array-length v8, v7

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    aget-object v7, v7, v8

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->j(Ljava/lang/String;)V

    :cond_3
    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_6

    aget-object v10, v7, v8

    new-instance v11, Lcom/ubix/ssp/open/nativee/UBiXImage;

    invoke-direct {v11}, Lcom/ubix/ssp/open/nativee/UBiXImage;-><init>()V

    if-eqz v10, :cond_5

    iget-object v12, v10, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    iget-object v12, v10, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setUrl(Ljava/lang/String;)V

    iget v12, v10, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->d:I

    invoke-virtual {v11, v12}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setWidth(I)V

    iget v12, v10, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->e:I

    invoke-virtual {v11, v12}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setHeight(I)V

    iget-object v10, v10, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->f:Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/ubix/ssp/open/nativee/UBiXImage;->setMaterialId(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->o(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->f:I

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->d(I)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->g:I

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->c(I)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->d(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->f:I

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->d(I)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->g:I

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->c(I)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->d:F

    float-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Lcom/ubix/ssp/ad/d/h;->c(J)V

    iget-object v7, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v7, v7, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/ubix/ssp/ad/d/h;->n(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->c()I

    move-result v8

    const-string v9, "AUTO_PLAY"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->K0()Z

    move-result v8

    const-string v9, "AUTO_MUTE"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, v1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v8, v8, Lcom/ubix/ssp/ad/e/y/a/a$b;->E:Ljava/lang/String;

    const-string v9, "BUTTON_TEXT"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->k0()I

    move-result v8

    const-string v9, "VIDEO_RENDER_TYPE"

    invoke-virtual {v7, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v8, Lcom/ubix/ssp/ad/d/f;

    iget-object v9, p0, Lcom/ubix/ssp/ad/i/c;->E:Ljava/lang/ref/SoftReference;

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/ubix/ssp/ad/d/f;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8}, Lcom/ubix/ssp/ad/d/h;->a(Lcom/ubix/ssp/ad/d/f;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const-string v9, "native_core_view"

    invoke-direct {p0, v7, v9, v8}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->a(Ljava/util/ArrayList;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->E:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/ubix/ssp/ad/e/a0/c;->a(Lcom/ubix/ssp/ad/e/y/a/a$b;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->a(Z)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->g:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->r(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->A:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->w(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->C:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->s(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->B:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->t(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->z:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->u(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->F:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->q(Ljava/lang/String;)V

    iget-wide v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->G:J

    invoke-virtual {v4, v6, v7}, Lcom/ubix/ssp/ad/d/h;->a(J)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->H:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->p(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->I:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->v(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->G0()Z

    move-result v6

    iput-boolean v6, v1, Lcom/ubix/ssp/ad/d/a;->v:Z

    const-string v7, "ubix/ic_logo.png"

    invoke-static {v7, v6}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ubix/ssp/ad/d/h;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v5, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/ubix/ssp/ad/d/h;->i(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ubix/ssp/ad/d/l;->z0()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/ubix/ssp/ad/d/h;->c(Z)V

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->m:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/ubix/ssp/ad/d/h;->k(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/ubix/ssp/ad/d/h;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/ubix/ssp/ad/i/c;->p(Lcom/ubix/ssp/ad/d/a;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rewardAction"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/c;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;I)V
    .locals 2

    .line 12
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traceEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    const/16 v0, 0x1388

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13a1

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13ba

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13d3

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13ec

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1450

    if-eq p2, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupport eventid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/u;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;J)V
    .locals 0

    .line 13
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->r0()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->s()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;FLcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    :goto_0
    iget v2, p0, Lcom/ubix/ssp/ad/a;->u:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/ubix/ssp/ad/a;->i:I

    if-ne v2, v3, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object v5, p5

    move-object v8, p6

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/a$y;)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "native_confirm_window_listener_key"

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/e/s/e;)V
    .locals 2

    .line 22
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "native_outer_download_listener_key"

    invoke-direct {p0, v0, v1, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeveloperDownloadListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "native_inner_download_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/ubix/ssp/ad/a$z;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/a$z;->a(Lcom/ubix/ssp/ad/e/s/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/g/c;)V
    .locals 1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "native_custom_confirm_window_listener_key"

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeVideoListener;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const-string v0, "video_listener_key"

    invoke-direct {p0, p1, v0, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V
    .locals 2

    .line 25
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    new-instance v1, Lcom/ubix/ssp/ad/i/c$i;

    invoke-direct {v1, p0, p2}, Lcom/ubix/ssp/ad/i/c$i;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Lcom/ubix/ssp/ad/g/k/c;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "native_confirm_window_listener_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/a$y;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/a$y;->a(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Z)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "custom_shake_sensor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "custom_native_container"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    :try_start_0
    move-object p2, v1

    check-cast p2, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    move-object p2, v1

    check-cast p2, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/e/a0/s;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_5

    sget-object p2, Lcom/ubix/ssp/ad/i/c;->D:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/ubix/ssp/ad/i/c;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v2, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    :cond_1
    move-object p2, v0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/ubix/ssp/ad/e/a0/s;

    new-instance v3, Lcom/ubix/ssp/ad/i/c$j;

    invoke-direct {v3, p0, v0, p1}, Lcom/ubix/ssp/ad/i/c$j;-><init>(Lcom/ubix/ssp/ad/i/c;Ljava/lang/Object;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {v2, v3}, Lcom/ubix/ssp/ad/e/a0/s;->a(Lcom/ubix/ssp/ad/e/a0/s$e;)V

    :cond_2
    sget-object v2, Lcom/ubix/ssp/ad/i/c;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/ubix/ssp/ad/i/c;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v3, Lcom/ubix/ssp/ad/i/c$k;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/ubix/ssp/ad/i/c$k;-><init>(Lcom/ubix/ssp/ad/i/c;Ljava/lang/Object;Ljava/lang/Object;Lcom/ubix/ssp/ad/d/a;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_2

    :cond_4
    check-cast v1, Lcom/ubix/ssp/ad/e/a0/s;

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    invoke-virtual {v1}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "CUSTOM_CLICK_RAW_UP_Y"

    const-string v5, "CUSTOM_CLICK_RAW_UP_X"

    const-string v6, "CUSTOM_CLICK_UP_Y"

    const-string v7, "CUSTOM_CLICK_UP_X"

    const-string v8, "CUSTOM_CLICK_RAW_DOWN_Y"

    const-string v9, "CUSTOM_CLICK_RAW_DOWN_X"

    const-string v10, "CUSTOM_CLICK_DOWN_Y"

    const-string v11, "CUSTOM_CLICK_DOWN_X"

    const-string v12, "1"

    const-string v13, "native_click_map_key"

    if-nez v2, :cond_0

    goto/16 :goto_f

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    new-instance v14, Landroid/view/View;

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/c;->e()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    move-object/from16 v14, p2

    :goto_0
    iget-object v15, v2, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v1, v15}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v15

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lcom/ubix/ssp/ad/d/l;->z0()Z

    move-result v15

    if-nez v15, :cond_2

    goto/16 :goto_f

    :cond_2
    iget-object v15, v1, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_4
    const-string v15, "__CUSTOM_CHECK__"

    invoke-virtual {v2, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v16, v15

    const-string v15, "__CLICK_TRIGGER__"

    move-object/from16 v17, v14

    const-string v14, "__CLICK_AREA__"

    if-nez v16, :cond_5

    :try_start_1
    invoke-virtual {v2, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v3, :cond_e

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "__DOWN_X__"

    const-string v14, "-999"

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, "__DOWN_Y__"

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "__RAW_DOWN_X__"

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v9, "__RAW_DOWN_Y__"

    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-virtual {v2, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v8, "__UP_X__"

    if-eqz v0, :cond_a

    :try_start_6
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v7, "__UP_Y__"

    if-eqz v0, :cond_b

    :try_start_7
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    invoke-virtual {v2, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v6, "__RAW_UP_X__"

    if-eqz v0, :cond_c

    :try_start_8
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    invoke-virtual {v2, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v5, "__RAW_UP_Y__"

    if-eqz v0, :cond_d

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    invoke-virtual {v2, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {v1, v0, v13, v2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_b

    :cond_f
    move-object/from16 v17, v14

    :goto_b
    :try_start_a
    iget-object v0, v1, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "interaction_listener_key"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v15, v0

    :goto_c
    move-object/from16 v2, p3

    move-object/from16 v14, v17

    goto :goto_d

    :catch_0
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v15, 0x0

    goto :goto_c

    :goto_d
    invoke-direct {v1, v14, v2, v15}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_f

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;Lcom/ubix/ssp/ad/g/c;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            "Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;",
            "Lcom/ubix/ssp/ad/g/c;",
            ")Z"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1, p3}, Lcom/ubix/ssp/ad/i/c;->d(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/ubix/ssp/ad/i/c;->a(Landroid/view/View;Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/open/nativee/express/UBiXNativeExpressInteractionListener;)V

    if-eqz p2, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "_"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "__BUTTON_AREA__"

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "__WIDTH__"

    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "__HEIGHT__"

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v6, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    iget v4, p0, Lcom/ubix/ssp/ad/a;->i:I

    iget-object p4, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p4}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p4

    invoke-virtual {p4}, Lcom/ubix/ssp/ad/d/l;->o()I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    move v7, p5

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v8, p6

    goto :goto_1

    :cond_1
    move v7, v1

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v8}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IZLcom/ubix/ssp/ad/g/c;)I

    move-result p1

    const/4 p3, 0x6

    const-string p4, "native_confirm_window_listener_key"

    const/4 p6, 0x4

    if-ne p1, p3, :cond_3

    :try_start_0
    iget-object p1, v2, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/a$y;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ubix/ssp/ad/a$y;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    if-ne p1, p6, :cond_5

    :try_start_1
    iget-object p1, v2, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/a$y;

    if-eqz p1, :cond_4

    invoke-interface {p1, p5}, Lcom/ubix/ssp/ad/a$y;->a(Z)Z

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/i/c;->A()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p6, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    goto :goto_7

    :cond_5
    const/16 p3, 0x16

    if-ne p1, p3, :cond_6

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v3, v5, p2}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    goto :goto_7

    :cond_6
    const/16 p3, 0x17

    if-ne p1, p3, :cond_7

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, v3, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ubix/ssp/ad/d/l;->q()I

    move-result p2

    invoke-virtual {p0, p1, v3, v5, p2}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;I)V

    goto :goto_7

    :cond_7
    const/4 p3, 0x2

    const/16 p4, 0x1f

    if-eq p1, p3, :cond_b

    const/4 p3, 0x5

    if-eq p1, p3, :cond_b

    if-ne p1, p4, :cond_8

    goto :goto_6

    :cond_8
    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    iget-object p1, v2, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Landroid/content/Context;)V

    goto :goto_7

    :cond_9
    const/16 p2, 0x21

    if-ne p1, p2, :cond_a

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p5, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    :goto_6
    if-ne p1, p4, :cond_c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->g(Ljava/lang/String;)V

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v5}, Lcom/ubix/ssp/ad/a;->a(Landroid/content/Context;Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V

    :cond_d
    :goto_7
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    return p5

    :cond_e
    move-object v2, p0

    return v1
.end method

.method public a(Lcom/ubix/ssp/ad/d/a;ZLjava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object v0

    iget v1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {v0, v1}, Lcom/ubix/ssp/ad/e/s/d;->b(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;)Z

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/16 p2, 0x2c

    if-ne v0, p2, :cond_1

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, p3, p1}, Lcom/ubix/ssp/ad/e/s/d;->a(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/e/z/e;

    const-string p2, "\u4e0b\u8f7d\u7ee7\u7eed"

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/z/e;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 p2, 0x2d

    const-string v2, "native_inner_download_listener_key"

    if-ne v0, p2, :cond_3

    :try_start_1
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p3

    move-object v0, p2

    check-cast v0, Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p3, v0}, Lcom/ubix/ssp/ad/e/s/c;->b(Lcom/ubix/ssp/ad/e/s/e;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p3

    check-cast p2, Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p3, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V

    :cond_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/b;->c()Lcom/ubix/ssp/ad/e/s/d;

    move-result-object p2

    iget-object p3, p0, Lcom/ubix/ssp/ad/a;->c:Landroid/content/Context;

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-interface {p2, p3, p1}, Lcom/ubix/ssp/ad/e/s/d;->b(Landroid/content/Context;I)V

    return v1

    :cond_3
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "interaction_listener_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeveloperDownloadListener triggerGlobalDownloadWindow "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v1, "native_outer_download_listener_key"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ubix/ssp/ad/e/s/e;

    iget-object v1, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p3, v1, p2, v0}, Lcom/ubix/ssp/ad/a;->a(Ljava/util/HashMap;ILcom/ubix/ssp/ad/e/s/e;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)Lcom/ubix/ssp/ad/a$z;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-direct {p0, p1, v2, p2}, Lcom/ubix/ssp/ad/i/c;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    move-object p3, p2

    check-cast p3, Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p1, p3}, Lcom/ubix/ssp/ad/e/s/c;->b(Lcom/ubix/ssp/ad/e/s/e;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/ubix/ssp/ad/e/s/c;->a()Lcom/ubix/ssp/ad/e/s/c;

    move-result-object p1

    check-cast p2, Lcom/ubix/ssp/ad/e/s/e;

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/s/c;->a(Lcom/ubix/ssp/ad/e/s/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public b(ILcom/ubix/ssp/ad/d/a;)V
    .locals 1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(ILcom/ubix/ssp/ad/d/a;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;",
            ")V"
        }
    .end annotation

    .line 3
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V

    return-void
.end method

.method public b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 4
    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v0, "native_confirm_window_listener_key"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/a$y;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/ubix/ssp/ad/a$y;->a(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return p2
.end method

.method public c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/ubix/ssp/ad/a;->c(Landroid/content/Context;Landroid/content/Intent;JLandroid/content/BroadcastReceiver;)V

    move-object p1, p0

    iget-object p2, p1, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p2}, Lcom/ubix/ssp/ad/i/c;->a(I[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    if-eqz p1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->c(Lcom/ubix/ssp/open/AdError;)V

    return-void
.end method

.method public d(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ubix/ssp/ad/d/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/d/a;Ljava/util/HashMap;)Z

    return-void
.end method

.method public e(Lcom/ubix/ssp/ad/d/a;)I
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Lcom/ubix/ssp/ad/d/a;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownloadAppProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return p1
.end method

.method public e(Lcom/ubix/ssp/open/AdError;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/open/AdError;)V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->F:Lcom/ubix/ssp/ad/g/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ubix/ssp/ad/g/g;->onAdLoadFailed(Lcom/ubix/ssp/open/AdError;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    const-string v0, "\u7ade\u4ef7\u5e7f\u544a\u4f53\u4e3a\u7a7a\u6216\u89e3\u6790\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u4f20\u5165\u7684\u53c2\u6570\u662f\u5426\u6b63\u786e"

    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->j(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/open/AdError;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;
    .locals 5

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget v1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->s:I

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v1, v2, :cond_17

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_12

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_17

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_12

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_11

    const/16 v2, 0xfa3

    if-eq v1, v2, :cond_10

    const/16 v2, 0xfa4

    if-eq v1, v2, :cond_d

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    const/16 p1, 0x10

    const-string v0, "\u5e7f\u544a\u6a21\u677fId\u5f02\u5e38,\u6216\u8d44\u6e90\u4e0e\u6a21\u677f\u4e0d\u5339\u914d"

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz v0, :cond_19

    array-length v1, v0

    if-eqz v1, :cond_19

    aget-object v0, v0, v3

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    return-object v4

    :pswitch_1
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    const/16 p1, 0xe

    const-string v0, "ICON\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto/16 :goto_5

    :cond_5
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    const/16 p1, 0xf

    const-string v0, "\u6807\u9898\u5185\u5bb9\u5f02\u5e38"

    goto/16 :goto_5

    :cond_6
    return-object v4

    :pswitch_2
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto/16 :goto_2

    :cond_8
    return-object v4

    :pswitch_3
    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_19

    array-length v0, p1

    if-eqz v0, :cond_19

    aget-object p1, p1, v3

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto/16 :goto_4

    :cond_9
    return-object v4

    :pswitch_4
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_3

    :cond_a
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_2

    :cond_b
    return-object v4

    :pswitch_5
    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_19

    array-length v0, p1

    if-eqz v0, :cond_19

    aget-object p1, p1, v3

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_4

    :cond_c
    return-object v4

    :cond_d
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_f
    return-object v4

    :cond_10
    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_19

    array-length v0, p1

    if-eqz v0, :cond_19

    aget-object p1, p1, v3

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4

    :cond_11
    return-object v4

    :cond_12
    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3

    :cond_13
    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_2

    :cond_14
    return-object v4

    :cond_15
    :goto_2
    const/16 p1, 0xc

    const-string v0, "\u89c6\u9891\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_5

    :cond_16
    :goto_3
    const/16 p1, 0xd

    const-string v0, "\u5c01\u9762\u56fe\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    goto :goto_5

    :cond_17
    iget-object p1, v0, Lcom/ubix/ssp/ad/e/y/a/a$b;->j:[Lcom/ubix/ssp/ad/e/y/a/a$b$b;

    if-eqz p1, :cond_19

    array-length v0, p1

    if-eqz v0, :cond_19

    aget-object p1, p1, v3

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/ubix/ssp/ad/e/y/a/a$b$b;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_4

    :cond_18
    return-object v4

    :cond_19
    :goto_4
    const/16 p1, 0xa

    const-string v0, "\u56fe\u7247\u8d44\u6e90\u94fe\u63a5\u5f02\u5e38"

    :goto_5
    invoke-static {p1, v0}, Lcom/ubix/ssp/ad/e/a0/a0/a;->k(ILjava/lang/String;)Lcom/ubix/ssp/open/AdError;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7db
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1771
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x177c
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2329
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/a;->h:I

    iget p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    invoke-super {p0, p1}, Lcom/ubix/ssp/ad/a;->m(I)V

    return-void
.end method

.method public m(Lcom/ubix/ssp/ad/d/a;)V
    .locals 3

    .line 2
    const-string v0, "native_core_view"

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->h()V

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->a()Lcom/ubix/ssp/ad/e/a0/y/e/c;

    move-result-object v0

    iget p1, p1, Lcom/ubix/ssp/ad/d/a;->o:I

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/a0/y/e/c;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public n(Lcom/ubix/ssp/ad/d/a;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->f(Lcom/ubix/ssp/ad/d/a;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownloadAppStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    return p1
.end method

.method public n(I)Lcom/ubix/ssp/ad/d/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/ParamsReview;
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object v0

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->x0()Z

    move-result v1

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->H0()Z

    move-result v0

    invoke-super {p0, p1, v1, v0}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;ZZ)Lcom/ubix/ssp/open/ParamsReview;

    move-result-object p1

    return-object p1
.end method

.method public p(I)Lcom/ubix/ssp/ad/d/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ubix/ssp/ad/d/a;

    iget-object p1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/e/y/a/a;)Lcom/ubix/ssp/ad/d/l;

    move-result-object p1

    return-object p1
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ubix/ssp/ad/a;->i:I

    return-void
.end method

.method public s(Lcom/ubix/ssp/ad/d/a;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/i/c;->r(Lcom/ubix/ssp/ad/d/a;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public t(Lcom/ubix/ssp/ad/d/a;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/i/c;->j(Lcom/ubix/ssp/ad/d/a;)Lcom/ubix/ssp/open/AdError;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    invoke-virtual {p0, v0}, Lcom/ubix/ssp/ad/a;->b(Lcom/ubix/ssp/ad/e/y/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "native_core_view"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c;->G:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/d/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    iget-object v2, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v2, v2, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/f;->getCoverImage()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/ubix/ssp/ad/e/v/a;->a(Ljava/lang/String;Landroid/widget/ImageView;ILcom/ubix/ssp/ad/e/v/e$b;)V

    iget-object v1, p1, Lcom/ubix/ssp/ad/d/a;->a:Lcom/ubix/ssp/ad/e/y/a/a;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a;->d:Lcom/ubix/ssp/ad/e/y/a/a$b;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b;->k:Lcom/ubix/ssp/ad/e/y/a/a$b$l;

    iget-object v1, v1, Lcom/ubix/ssp/ad/e/y/a/a$b$l;->b:Ljava/lang/String;

    new-instance v2, Lcom/ubix/ssp/ad/i/c$h;

    invoke-direct {v2, p0, p1}, Lcom/ubix/ssp/ad/i/c$h;-><init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/ubix/ssp/ad/d/f;->a(Ljava/lang/String;Lcom/ubix/ssp/ad/g/k/g;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->v()V

    return-void
.end method

.method public w()V
    .locals 0

    invoke-super {p0}, Lcom/ubix/ssp/ad/a;->w()V

    return-void
.end method
