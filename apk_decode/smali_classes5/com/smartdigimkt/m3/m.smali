.class public final Lcom/smartdigimkt/m3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:[Ljava/lang/String;

.field public B:[Ljava/lang/String;

.field public C:[Ljava/lang/String;

.field public D:[Ljava/lang/String;

.field public E:[Ljava/lang/String;

.field public F:[Ljava/lang/String;

.field public G:Ljava/util/HashMap;

.field public H:[Ljava/lang/String;

.field public I:[Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public b0:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g:[Ljava/lang/String;

.field public g0:Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public h0:Ljava/lang/String;

.field public i:[Ljava/lang/String;

.field public i0:Ljava/lang/String;

.field public j:[Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k:[Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l:[Ljava/lang/String;

.field public l0:Ljava/lang/String;

.field public m:[Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public o0:Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public p0:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r:[Ljava/lang/String;

.field public s:[Ljava/lang/String;

.field public t:[Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public v:[Ljava/lang/String;

.field public w:[Ljava/lang/String;

.field public x:[Ljava/lang/String;

.field public y:[Ljava/lang/String;

.field public z:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Lcom/smartdigimkt/m3/m;
    .locals 12

    const-string v0, "_start_install"

    const-string v1, "_install"

    const-string v2, "_dl_end"

    const-string v3, "_dl_star"

    const-string v4, "tp_"

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    .line 1
    :cond_0
    :try_start_0
    new-instance v6, Lcom/smartdigimkt/m3/m;

    invoke-direct {v6}, Lcom/smartdigimkt/m3/m;-><init>()V

    .line 2
    const-string v7, "ks"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->a:Ljava/lang/String;

    .line 3
    const-string v7, "nurl"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->b:[Ljava/lang/String;

    .line 4
    const-string v7, "lurl"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->c:[Ljava/lang/String;

    .line 5
    const-string v7, "imp"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->d:[Ljava/lang/String;

    .line 6
    const-string v7, "click"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->e:[Ljava/lang/String;

    .line 7
    const-string v7, "vstart"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->f:[Ljava/lang/String;

    .line 8
    const-string v7, "v25"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->g:[Ljava/lang/String;

    .line 9
    const-string v7, "v50"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->h:[Ljava/lang/String;

    .line 10
    const-string v7, "v75"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->i:[Ljava/lang/String;

    .line 11
    const-string v7, "v100"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->j:[Ljava/lang/String;

    .line 12
    const-string v7, "vpaused"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->k:[Ljava/lang/String;

    .line 13
    const-string v7, "vclick"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->l:[Ljava/lang/String;

    .line 14
    const-string v7, "vmute"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->m:[Ljava/lang/String;

    .line 15
    const-string v7, "vunmute"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->n:[Ljava/lang/String;

    .line 16
    const-string v7, "ec_show"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->o:[Ljava/lang/String;

    .line 17
    const-string v7, "ec_close"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->p:[Ljava/lang/String;

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/smartdigimkt/c5/o;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->q:[Ljava/lang/String;

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->r:[Ljava/lang/String;

    .line 20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->s:[Ljava/lang/String;

    .line 21
    const-string v7, "vresumed"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->t:[Ljava/lang/String;

    .line 22
    const-string v7, "vskip"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->u:[Ljava/lang/String;

    .line 23
    const-string v7, "vfail"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->v:[Ljava/lang/String;

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->w:[Ljava/lang/String;

    .line 25
    const-string v7, "dp_start"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->x:[Ljava/lang/String;

    .line 26
    const-string v7, "dp_succ"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->y:[Ljava/lang/String;

    .line 27
    const-string v7, "app_install"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->z:[Ljava/lang/String;

    .line 28
    const-string v7, "app_uninstall"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->A:[Ljava/lang/String;

    .line 29
    const-string v7, "app_unknow"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->B:[Ljava/lang/String;

    .line 30
    const-string v7, "dp_inst_fail"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->D:[Ljava/lang/String;

    .line 31
    const-string v7, "dp_uninst_fail"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->C:[Ljava/lang/String;

    .line 32
    const-string v7, "vd_succ"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->E:[Ljava/lang/String;

    .line 33
    const-string v7, "vrewarded"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->F:[Ljava/lang/String;

    .line 34
    const-string v7, "v_p_tracking"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 35
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v6, Lcom/smartdigimkt/m3/m;->G:Ljava/util/HashMap;

    const/4 v8, 0x0

    .line 36
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 37
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 38
    const-string v10, "play_sec"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 39
    const-string v11, "list"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 40
    invoke-static {v9}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v9

    .line 41
    iget-object v11, v6, Lcom/smartdigimkt/m3/m;->G:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 42
    :cond_1
    const-string v7, "load_success"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->H:[Ljava/lang/String;

    .line 43
    const-string v7, "load_fail"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->I:[Ljava/lang/String;

    .line 44
    const-string v7, "tp_nurl"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->J:Ljava/lang/String;

    .line 45
    const-string v7, "tp_imp"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->K:Ljava/lang/String;

    .line 46
    const-string v7, "tp_click"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->L:Ljava/lang/String;

    .line 47
    const-string v7, "tp_vstart"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->M:Ljava/lang/String;

    .line 48
    const-string v7, "tp_v25"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->N:Ljava/lang/String;

    .line 49
    const-string v7, "tp_v50"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->O:Ljava/lang/String;

    .line 50
    const-string v7, "tp_v75"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->P:Ljava/lang/String;

    .line 51
    const-string v7, "tp_v100"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->Q:Ljava/lang/String;

    .line 52
    const-string v7, "tp_vpaused"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->R:Ljava/lang/String;

    .line 53
    const-string v7, "tp_vclick"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->S:Ljava/lang/String;

    .line 54
    const-string v7, "tp_vmute"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->T:Ljava/lang/String;

    .line 55
    const-string v7, "tp_vunmute"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->U:Ljava/lang/String;

    .line 56
    const-string v7, "tp_ec_show"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->V:Ljava/lang/String;

    .line 57
    const-string v7, "tp_ec_close"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/smartdigimkt/m3/m;->W:Ljava/lang/String;

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/smartdigimkt/c5/o;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/smartdigimkt/m3/m;->X:Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/smartdigimkt/m3/m;->Y:Ljava/lang/String;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/smartdigimkt/m3/m;->Z:Ljava/lang/String;

    .line 61
    const-string v1, "tp_vresumed"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/smartdigimkt/m3/m;->a0:Ljava/lang/String;

    .line 62
    const-string v1, "tp_vskip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/smartdigimkt/m3/m;->b0:Ljava/lang/String;

    .line 63
    const-string v1, "tp_vfail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/smartdigimkt/m3/m;->c0:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->d0:Ljava/lang/String;

    .line 65
    const-string v0, "tp_dp_start"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->e0:Ljava/lang/String;

    .line 66
    const-string v0, "tp_dp_succ"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->f0:Ljava/lang/String;

    .line 67
    const-string v0, "tp_app_install"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->g0:Ljava/lang/String;

    .line 68
    const-string v0, "tp_app_uninstall"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->h0:Ljava/lang/String;

    .line 69
    const-string v0, "tp_app_unknow"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->i0:Ljava/lang/String;

    .line 70
    const-string v0, "tp_dp_inst_fail"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->k0:Ljava/lang/String;

    .line 71
    const-string v0, "tp_dp_uninst_fail"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->j0:Ljava/lang/String;

    .line 72
    const-string v0, "tp_vd_succ"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->l0:Ljava/lang/String;

    .line 73
    const-string v0, "tp_vrewarded"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->m0:Ljava/lang/String;

    .line 74
    const-string v0, "tp_load_success"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->n0:Ljava/lang/String;

    .line 75
    const-string v0, "tp_load_fail"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->o0:Ljava/lang/String;

    .line 76
    const-string v0, "vready"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/smartdigimkt/c5/k;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/smartdigimkt/m3/m;->p0:[Ljava/lang/String;

    .line 77
    const-string v0, "tp_ready"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/smartdigimkt/m3/m;->q0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    .line 78
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v5
.end method
