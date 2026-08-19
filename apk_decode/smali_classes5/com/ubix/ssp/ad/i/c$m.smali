.class Lcom/ubix/ssp/ad/i/c$m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Lcom/ubix/ssp/ad/d/l;Landroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;Ljava/util/List;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/d/l;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/ubix/ssp/ad/d/a;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

.field final synthetic g:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/l;Ljava/util/List;Landroid/view/ViewGroup;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$m;->g:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$m;->a:Lcom/ubix/ssp/ad/d/l;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$m;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/ubix/ssp/ad/i/c$m;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/ubix/ssp/ad/i/c$m;->d:Lcom/ubix/ssp/ad/d/a;

    iput-object p6, p0, Lcom/ubix/ssp/ad/i/c$m;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/ubix/ssp/ad/i/c$m;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$m;->a:Lcom/ubix/ssp/ad/d/l;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/d/l;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$m;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$m;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$m;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$m;->g:Lcom/ubix/ssp/ad/i/c;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$m;->d:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$m;->e:Landroid/view/View;

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/c$m;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    const/16 v5, 0x300

    :goto_1
    move-object v8, v0

    move-object v6, v1

    move-object v7, v2

    move-object v9, v3

    move-object v11, v4

    move v10, v5

    goto :goto_3

    :cond_1
    sget v0, Lcom/ubix/ssp/ad/d/b;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$m;->d:Lcom/ubix/ssp/ad/d/a;

    iget-boolean v0, v0, Lcom/ubix/ssp/ad/d/a;->t:Z

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$m;->g:Lcom/ubix/ssp/ad/i/c;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$m;->c:Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$m;->g:Lcom/ubix/ssp/ad/i/c;

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$m;->d:Lcom/ubix/ssp/ad/d/a;

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$m;->e:Landroid/view/View;

    iget-object v4, p0, Lcom/ubix/ssp/ad/i/c$m;->f:Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    const/16 v5, 0x100

    goto :goto_1

    :goto_3
    invoke-static/range {v6 .. v11}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Ljava/util/List;Landroid/view/View;ILcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
