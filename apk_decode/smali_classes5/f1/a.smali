.class public final synthetic Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/w4/b;

.field public final synthetic c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/w4/b;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/a;->b:Lcom/smartdigimkt/w4/b;

    iput-object p2, p0, Lf1/a;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p3, p0, Lf1/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/a;->b:Lcom/smartdigimkt/w4/b;

    iget-object v1, p0, Lf1/a;->c:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iget-object v2, p0, Lf1/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/smartdigimkt/w4/b;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;Ljava/lang/String;)V

    return-void
.end method
