.class Lcom/ubix/ssp/ad/i/c$p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$p;->b:Landroid/view/View;

    iput p4, p0, Lcom/ubix/ssp/ad/i/c$p;->c:I

    iput-object p5, p0, Lcom/ubix/ssp/ad/i/c$p;->d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    iput-object p6, p0, Lcom/ubix/ssp/ad/i/c$p;->e:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const-string v0, "12"

    const-string v1, "1"

    const-string v2, "easy_slide_trigger"

    const-string v3, "true"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "native_click_map_key"

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    :try_start_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$p;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$p;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x30d53

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v0}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$p;->b:Landroid/view/View;

    invoke-static {v0, p1, v1, p2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Ljava/util/HashMap;Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p2, v0, v6, p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v5

    :cond_5
    :goto_2
    return v7

    :cond_6
    :goto_3
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v8}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    iget-object v9, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    if-eqz v8, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    sget v9, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne v9, v7, :cond_7

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$p;->b:Landroid/view/View;

    invoke-virtual {p1, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return v5

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_c

    const-string v5, "__DOWN_X__"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "__DOWN_Y__"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_4

    :cond_8
    move v5, v9

    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v5, v5, v6

    const-string v8, "__CLICK_TRIGGER__"

    const-string v11, "__CLICK_AREA__"

    if-gez v5, :cond_a

    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, v6

    if-gez p2, :cond_a

    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    iput-boolean v7, p2, Lcom/ubix/ssp/ad/d/a;->t:Z

    iget p2, p0, Lcom/ubix/ssp/ad/i/c$p;->c:I

    const/16 v0, 0x100

    if-ne p2, v0, :cond_b

    sget p2, Lcom/ubix/ssp/ad/d/b;->E:I

    if-ne p2, v7, :cond_b

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->b:Landroid/view/View;

    invoke-virtual {p2, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p2, v0, v2, v3}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    move-object v3, v4

    const-string p2, "shouldClick"

    invoke-static {p2}, Lcom/ubix/ssp/ad/e/a0/u;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string v0, "native_custom_confirm_window_listener_key"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$p;->f:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$p;->a:Lcom/ubix/ssp/ad/d/a;

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/c$p;->d:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-nez p2, :cond_d

    :goto_6
    move-object v2, p1

    move-object v5, v10

    goto :goto_7

    :cond_d
    move-object v10, p2

    check-cast v10, Lcom/ubix/ssp/ad/g/c;

    goto :goto_6

    :goto_7
    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_9
    return v7
.end method
