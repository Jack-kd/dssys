.class public final synthetic Landroidx/window/embedding/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/extensions/core/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroidx/window/embedding/SplitPairRule;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/SplitPairRule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/embedding/f;->a:Landroidx/window/embedding/SplitPairRule;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/f;->a:Landroidx/window/embedding/SplitPairRule;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->h(Landroidx/window/embedding/SplitPairRule;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
