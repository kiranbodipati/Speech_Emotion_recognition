??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
3
Square
x"T
y"T"
Ttype:
2
	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:/@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@d*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@d*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:d*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:/@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@d*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:@d*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:/@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:/@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@@*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@d*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:@d*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:d*
dtype0

NoOpNoOp
?-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
 
 
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratemkml mm!mn"mo#mpvqvr vs!vt"vu#vv
*
0
1
 2
!3
"4
#5
*
0
1
 2
!3
"4
#5
 
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
 
 
h

kernel
bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

 kernel
!bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
R
5	variables
6trainable_variables
7regularization_losses
8	keras_api
h

"kernel
#bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
*
0
1
 2
!3
"4
#5
*
0
1
 2
!3
"4
#5
 
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEdense_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

G0
H1
 
 

0
1

0
1
 
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
)	variables
*trainable_variables
+regularization_losses
 
 
 
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
-	variables
.trainable_variables
/regularization_losses

 0
!1

 0
!1
 
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
1	variables
2trainable_variables
3regularization_losses
 
 
 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
5	variables
6trainable_variables
7regularization_losses

"0
#1

"0
#1
 
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
9	variables
:trainable_variables
;regularization_losses
 
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 
4
	btotal
	ccount
d	variables
e	keras_api
D
	ftotal
	gcount
h
_fn_kwargs
i	variables
j	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

b0
c1

d	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

f0
g1

i	variables
ki
VARIABLE_VALUEAdam/dense/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/dense/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/dense_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????/*
dtype0*
shape:?????????/
z
serving_default_input_2Placeholder*'
_output_shapes
:?????????/*
dtype0*
shape:?????????/
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2dense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_16994445
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_16994987
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_16995078??
?

?
E__inference_dense_1_layer_call_and_return_conditional_losses_16994836

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_model_layer_call_fn_16994017
input_3
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_3
?
?
C__inference_model_layer_call_and_return_conditional_losses_16994697

inputs6
$dense_matmul_readvariableop_resource:/@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@d5
'dense_2_biasadd_readvariableop_resource:d
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@h
dropout/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@l
dropout_1/IdentityIdentitydense_1/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_16993983

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?+
?
C__inference_model_layer_call_and_return_conditional_losses_16994737

inputs6
$dense_matmul_readvariableop_resource:/@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@d5
'dense_2_biasadd_readvariableop_resource:d
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0u
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_1/dropout/MulMuldense_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@a
dropout_1/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
?
(__inference_model_layer_call_fn_16994654

inputs
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
c
*__inference_dropout_layer_call_fn_16994799

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16994080o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995

inputs0
matmul_readvariableop_resource:@d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
C__inference_dense_layer_call_and_return_conditional_losses_16993948

inputs0
matmul_readvariableop_resource:/@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:/@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?

?
C__inference_dense_layer_call_and_return_conditional_losses_16994789

inputs0
matmul_readvariableop_resource:/@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:/@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????/: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?	
?
*__inference_model_1_layer_call_fn_16994463
inputs_0
inputs_1
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_16994265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/1
?
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994334

inputs
inputs_1 
model_16994312:/@
model_16994314:@ 
model_16994316:@@
model_16994318:@ 
model_16994320:@d
model_16994322:d
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_16994312model_16994314model_16994316model_16994318model_16994320model_16994322*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133?
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_16994312model_16994314model_16994316model_16994318model_16994320model_16994322*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133?
dot/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_16994262k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?	
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994047

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994419
input_1
input_2 
model_16994397:/@
model_16994399:@ 
model_16994401:@@
model_16994403:@ 
model_16994405:@d
model_16994407:d
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_16994397model_16994399model_16994401model_16994403model_16994405model_16994407*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133?
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2model_16994397model_16994399model_16994401model_16994403model_16994405model_16994407*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133?
dot/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_16994262k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_16993959

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994265

inputs
inputs_1 
model_16994216:/@
model_16994218:@ 
model_16994220:@@
model_16994222:@ 
model_16994224:@d
model_16994226:d
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_16994216model_16994218model_16994220model_16994222model_16994224model_16994226*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002?
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_16994216model_16994218model_16994220model_16994222model_16994224model_16994226*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002?
dot/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_16994262k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?	
?
*__inference_model_1_layer_call_fn_16994367
input_1
input_2
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_16994334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994393
input_1
input_2 
model_16994371:/@
model_16994373:@ 
model_16994375:@@
model_16994377:@ 
model_16994379:@d
model_16994381:d
identity??model/StatefulPartitionedCall?model/StatefulPartitionedCall_1?
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_16994371model_16994373model_16994375model_16994377model_16994379model_16994381*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002?
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2model_16994371model_16994373model_16994375model_16994377model_16994379model_16994381*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994002?
dot/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_16994262k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
?
C__inference_model_layer_call_and_return_conditional_losses_16994207
input_3 
dense_16994189:/@
dense_16994191:@"
dense_1_16994195:@@
dense_1_16994197:@"
dense_2_16994201:@d
dense_2_16994203:d
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_16994189dense_16994191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_16993948?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16994080?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_16994195dense_1_16994197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994047?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_16994201dense_2_16994203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_3
?
H
,__inference_dropout_1_layer_call_fn_16994841

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16993983`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?N
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994545
inputs_0
inputs_1<
*model_dense_matmul_readvariableop_resource:/@9
+model_dense_biasadd_readvariableop_resource:@>
,model_dense_1_matmul_readvariableop_resource:@@;
-model_dense_1_biasadd_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@d;
-model_dense_2_biasadd_readvariableop_resource:d
identity??"model/dense/BiasAdd/ReadVariableOp?$model/dense/BiasAdd_1/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?#model/dense/MatMul_1/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?&model/dense_1/BiasAdd_1/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?%model/dense_1/MatMul_1/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?&model/dense_2/BiasAdd_1/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?%model/dense_2/MatMul_1/ReadVariableOp?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model/dense/MatMulMatMulinputs_0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@t
model/dropout/IdentityIdentitymodel/dense/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@x
model/dropout_1/IdentityIdentity model/dense_1/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model/dense_2/MatMulMatMul!model/dropout_1/Identity:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model/dense/MatMul_1MatMulinputs_1+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@l
model/dense/Relu_1Relumodel/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@x
model/dropout/Identity_1Identity model/dense/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
%model/dense_1/MatMul_1/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model/dense_1/MatMul_1MatMul!model/dropout/Identity_1:output:0-model/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
&model/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense_1/BiasAdd_1BiasAdd model/dense_1/MatMul_1:product:0.model/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
model/dense_1/Relu_1Relu model/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@|
model/dropout_1/Identity_1Identity"model/dense_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
%model/dense_2/MatMul_1/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model/dense_2/MatMul_1MatMul#model/dropout_1/Identity_1:output:0-model/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
&model/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model/dense_2/BiasAdd_1BiasAdd model/dense_2/MatMul_1:product:0.model/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????ds
dot/l2_normalize/SquareSquaremodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????dh
&dot/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
dot/l2_normalize/SumSumdot/l2_normalize/Square:y:0/dot/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(_
dot/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
dot/l2_normalize/MaximumMaximumdot/l2_normalize/Sum:output:0#dot/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:?????????o
dot/l2_normalize/RsqrtRsqrtdot/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:??????????
dot/l2_normalizeMulmodel/dense_2/BiasAdd:output:0dot/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dw
dot/l2_normalize_1/SquareSquare model/dense_2/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????dj
(dot/l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
dot/l2_normalize_1/SumSumdot/l2_normalize_1/Square:y:01dot/l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(a
dot/l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
dot/l2_normalize_1/MaximumMaximumdot/l2_normalize_1/Sum:output:0%dot/l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:?????????s
dot/l2_normalize_1/RsqrtRsqrtdot/l2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:??????????
dot/l2_normalize_1Mul model/dense_2/BiasAdd_1:output:0dot/l2_normalize_1/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dT
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
dot/ExpandDims
ExpandDimsdot/l2_normalize:z:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????dV
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :?
dot/ExpandDims_1
ExpandDimsdot/l2_normalize_1:z:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????d?

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????L
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
c
IdentityIdentitydot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/BiasAdd_1/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp&^model/dense_1/MatMul_1/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/BiasAdd_1/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp&^model/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/BiasAdd_1/ReadVariableOp&model/dense_1/BiasAdd_1/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2N
%model/dense_1/MatMul_1/ReadVariableOp%model/dense_1/MatMul_1/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/BiasAdd_1/ReadVariableOp&model/dense_2/BiasAdd_1/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2N
%model/dense_2/MatMul_1/ReadVariableOp%model/dense_2/MatMul_1/ReadVariableOp:Q M
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/1
?	
?
*__inference_model_1_layer_call_fn_16994280
input_1
input_2
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_16994265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
m
A__inference_dot_layer_call_and_return_conditional_losses_16994769
inputs_0
inputs_1
identityY
l2_normalize/SquareSquareinputs_0*
T0*'
_output_shapes
:?????????dd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:?????????g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:?????????g
l2_normalizeMulinputs_0l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:?????????d[
l2_normalize_1/SquareSquareinputs_1*
T0*'
_output_shapes
:?????????df
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:?????????k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:?????????k
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :y

ExpandDims
ExpandDimsl2_normalize:z:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsl2_normalize_1:z:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????dy
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?9
?

!__inference__traced_save_16994987
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :/@:@:@@:@:@d:d: : : : :/@:@:@@:@:@d:d:/@:@:@@:@:@d:d: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:/@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 	

_output_shapes
:@:$
 

_output_shapes

:@d: 

_output_shapes
:d:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:/@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@d: 

_output_shapes
:d:$ 

_output_shapes

:/@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@d: 

_output_shapes
:d:

_output_shapes
: 
?	
f
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994863

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?j
?
$__inference__traced_restore_16995078
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: 1
assignvariableop_5_dense_kernel:/@+
assignvariableop_6_dense_bias:@3
!assignvariableop_7_dense_1_kernel:@@-
assignvariableop_8_dense_1_bias:@3
!assignvariableop_9_dense_2_kernel:@d.
 assignvariableop_10_dense_2_bias:d#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: 9
'assignvariableop_15_adam_dense_kernel_m:/@3
%assignvariableop_16_adam_dense_bias_m:@;
)assignvariableop_17_adam_dense_1_kernel_m:@@5
'assignvariableop_18_adam_dense_1_bias_m:@;
)assignvariableop_19_adam_dense_2_kernel_m:@d5
'assignvariableop_20_adam_dense_2_bias_m:d9
'assignvariableop_21_adam_dense_kernel_v:/@3
%assignvariableop_22_adam_dense_bias_v:@;
)assignvariableop_23_adam_dense_1_kernel_v:@@5
'assignvariableop_24_adam_dense_1_bias_v:@;
)assignvariableop_25_adam_dense_2_kernel_v:@d5
'assignvariableop_26_adam_dense_2_bias_v:d
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
?
E__inference_dense_2_layer_call_and_return_conditional_losses_16994882

inputs0
matmul_readvariableop_resource:@d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????dw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
&__inference_signature_wrapper_16994445
input_1
input_2
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_16993930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
e
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994851

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
d
E__inference_dropout_layer_call_and_return_conditional_losses_16994816

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
C__inference_model_layer_call_and_return_conditional_losses_16994002

inputs 
dense_16993949:/@
dense_16993951:@"
dense_1_16993973:@@
dense_1_16993975:@"
dense_2_16993996:@d
dense_2_16993998:d
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_16993949dense_16993951*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_16993948?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16993959?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_16993973dense_1_16993975*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972?
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16993983?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_16993996dense_2_16993998*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
?
C__inference_model_layer_call_and_return_conditional_losses_16994186
input_3 
dense_16994168:/@
dense_16994170:@"
dense_1_16994174:@@
dense_1_16994176:@"
dense_2_16994180:@d
dense_2_16994182:d
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_16994168dense_16994170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_16993948?
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16993959?
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_16994174dense_1_16994176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972?
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16993983?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_16994180dense_2_16994182*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_3
?
?
C__inference_model_layer_call_and_return_conditional_losses_16994133

inputs 
dense_16994115:/@
dense_16994117:@"
dense_1_16994121:@@
dense_1_16994123:@"
dense_2_16994127:@d
dense_2_16994129:d
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_16994115dense_16994117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_16993948?
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16994080?
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_16994121dense_1_16994123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994047?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_16994127dense_2_16994129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d?
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
?
*__inference_dense_1_layer_call_fn_16994825

inputs
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_1_layer_call_and_return_conditional_losses_16993972o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
k
A__inference_dot_layer_call_and_return_conditional_losses_16994262

inputs
inputs_1
identityW
l2_normalize/SquareSquareinputs*
T0*'
_output_shapes
:?????????dd
"l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
l2_normalize/SumSuml2_normalize/Square:y:0+l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims([
l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
l2_normalize/MaximumMaximuml2_normalize/Sum:output:0l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:?????????g
l2_normalize/RsqrtRsqrtl2_normalize/Maximum:z:0*
T0*'
_output_shapes
:?????????e
l2_normalizeMulinputsl2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:?????????d[
l2_normalize_1/SquareSquareinputs_1*
T0*'
_output_shapes
:?????????df
$l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
l2_normalize_1/SumSuml2_normalize_1/Square:y:0-l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(]
l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
l2_normalize_1/MaximumMaximuml2_normalize_1/Sum:output:0!l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:?????????k
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:?????????k
l2_normalize_1Mulinputs_1l2_normalize_1/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :y

ExpandDims
ExpandDimsl2_normalize:z:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????dR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :
ExpandDims_1
ExpandDimsl2_normalize_1:z:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????dy
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????D
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
*__inference_dense_2_layer_call_fn_16994872

inputs
unknown:@d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_2_layer_call_and_return_conditional_losses_16993995o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?Y
?
#__inference__wrapped_model_16993930
input_1
input_2D
2model_1_model_dense_matmul_readvariableop_resource:/@A
3model_1_model_dense_biasadd_readvariableop_resource:@F
4model_1_model_dense_1_matmul_readvariableop_resource:@@C
5model_1_model_dense_1_biasadd_readvariableop_resource:@F
4model_1_model_dense_2_matmul_readvariableop_resource:@dC
5model_1_model_dense_2_biasadd_readvariableop_resource:d
identity??*model_1/model/dense/BiasAdd/ReadVariableOp?,model_1/model/dense/BiasAdd_1/ReadVariableOp?)model_1/model/dense/MatMul/ReadVariableOp?+model_1/model/dense/MatMul_1/ReadVariableOp?,model_1/model/dense_1/BiasAdd/ReadVariableOp?.model_1/model/dense_1/BiasAdd_1/ReadVariableOp?+model_1/model/dense_1/MatMul/ReadVariableOp?-model_1/model/dense_1/MatMul_1/ReadVariableOp?,model_1/model/dense_2/BiasAdd/ReadVariableOp?.model_1/model/dense_2/BiasAdd_1/ReadVariableOp?+model_1/model/dense_2/MatMul/ReadVariableOp?-model_1/model/dense_2/MatMul_1/ReadVariableOp?
)model_1/model/dense/MatMul/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model_1/model/dense/MatMulMatMulinput_11model_1/model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
*model_1/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_1/model/dense/BiasAddBiasAdd$model_1/model/dense/MatMul:product:02model_1/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@x
model_1/model/dense/ReluRelu$model_1/model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
model_1/model/dropout/IdentityIdentity&model_1/model/dense/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
+model_1/model/dense_1/MatMul/ReadVariableOpReadVariableOp4model_1_model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model_1/model/dense_1/MatMulMatMul'model_1/model/dropout/Identity:output:03model_1/model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
,model_1/model/dense_1/BiasAdd/ReadVariableOpReadVariableOp5model_1_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_1/model/dense_1/BiasAddBiasAdd&model_1/model/dense_1/MatMul:product:04model_1/model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
model_1/model/dense_1/ReluRelu&model_1/model/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
 model_1/model/dropout_1/IdentityIdentity(model_1/model/dense_1/Relu:activations:0*
T0*'
_output_shapes
:?????????@?
+model_1/model/dense_2/MatMul/ReadVariableOpReadVariableOp4model_1_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model_1/model/dense_2/MatMulMatMul)model_1/model/dropout_1/Identity:output:03model_1/model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
,model_1/model/dense_2/BiasAdd/ReadVariableOpReadVariableOp5model_1_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model_1/model/dense_2/BiasAddBiasAdd&model_1/model/dense_2/MatMul:product:04model_1/model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
+model_1/model/dense/MatMul_1/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model_1/model/dense/MatMul_1MatMulinput_23model_1/model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
,model_1/model/dense/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_1/model/dense/BiasAdd_1BiasAdd&model_1/model/dense/MatMul_1:product:04model_1/model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
model_1/model/dense/Relu_1Relu&model_1/model/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@?
 model_1/model/dropout/Identity_1Identity(model_1/model/dense/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
-model_1/model/dense_1/MatMul_1/ReadVariableOpReadVariableOp4model_1_model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model_1/model/dense_1/MatMul_1MatMul)model_1/model/dropout/Identity_1:output:05model_1/model/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.model_1/model/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp5model_1_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_1/model/dense_1/BiasAdd_1BiasAdd(model_1/model/dense_1/MatMul_1:product:06model_1/model/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
model_1/model/dense_1/Relu_1Relu(model_1/model/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@?
"model_1/model/dropout_1/Identity_1Identity*model_1/model/dense_1/Relu_1:activations:0*
T0*'
_output_shapes
:?????????@?
-model_1/model/dense_2/MatMul_1/ReadVariableOpReadVariableOp4model_1_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model_1/model/dense_2/MatMul_1MatMul+model_1/model/dropout_1/Identity_1:output:05model_1/model/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
.model_1/model/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp5model_1_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model_1/model/dense_2/BiasAdd_1BiasAdd(model_1/model/dense_2/MatMul_1:product:06model_1/model/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
model_1/dot/l2_normalize/SquareSquare&model_1/model/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????dp
.model_1/dot/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model_1/dot/l2_normalize/SumSum#model_1/dot/l2_normalize/Square:y:07model_1/dot/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(g
"model_1/dot/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
 model_1/dot/l2_normalize/MaximumMaximum%model_1/dot/l2_normalize/Sum:output:0+model_1/dot/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:?????????
model_1/dot/l2_normalize/RsqrtRsqrt$model_1/dot/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_1/dot/l2_normalizeMul&model_1/model/dense_2/BiasAdd:output:0"model_1/dot/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:?????????d?
!model_1/dot/l2_normalize_1/SquareSquare(model_1/model/dense_2/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????dr
0model_1/dot/l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model_1/dot/l2_normalize_1/SumSum%model_1/dot/l2_normalize_1/Square:y:09model_1/dot/l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(i
$model_1/dot/l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
"model_1/dot/l2_normalize_1/MaximumMaximum'model_1/dot/l2_normalize_1/Sum:output:0-model_1/dot/l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:??????????
 model_1/dot/l2_normalize_1/RsqrtRsqrt&model_1/dot/l2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:??????????
model_1/dot/l2_normalize_1Mul(model_1/model/dense_2/BiasAdd_1:output:0$model_1/dot/l2_normalize_1/Rsqrt:y:0*
T0*'
_output_shapes
:?????????d\
model_1/dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
model_1/dot/ExpandDims
ExpandDimsmodel_1/dot/l2_normalize:z:0#model_1/dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????d^
model_1/dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :?
model_1/dot/ExpandDims_1
ExpandDimsmodel_1/dot/l2_normalize_1:z:0%model_1/dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????d?
model_1/dot/MatMulBatchMatMulV2model_1/dot/ExpandDims:output:0!model_1/dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????\
model_1/dot/ShapeShapemodel_1/dot/MatMul:output:0*
T0*
_output_shapes
:?
model_1/dot/SqueezeSqueezemodel_1/dot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
k
IdentityIdentitymodel_1/dot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp+^model_1/model/dense/BiasAdd/ReadVariableOp-^model_1/model/dense/BiasAdd_1/ReadVariableOp*^model_1/model/dense/MatMul/ReadVariableOp,^model_1/model/dense/MatMul_1/ReadVariableOp-^model_1/model/dense_1/BiasAdd/ReadVariableOp/^model_1/model/dense_1/BiasAdd_1/ReadVariableOp,^model_1/model/dense_1/MatMul/ReadVariableOp.^model_1/model/dense_1/MatMul_1/ReadVariableOp-^model_1/model/dense_2/BiasAdd/ReadVariableOp/^model_1/model/dense_2/BiasAdd_1/ReadVariableOp,^model_1/model/dense_2/MatMul/ReadVariableOp.^model_1/model/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2X
*model_1/model/dense/BiasAdd/ReadVariableOp*model_1/model/dense/BiasAdd/ReadVariableOp2\
,model_1/model/dense/BiasAdd_1/ReadVariableOp,model_1/model/dense/BiasAdd_1/ReadVariableOp2V
)model_1/model/dense/MatMul/ReadVariableOp)model_1/model/dense/MatMul/ReadVariableOp2Z
+model_1/model/dense/MatMul_1/ReadVariableOp+model_1/model/dense/MatMul_1/ReadVariableOp2\
,model_1/model/dense_1/BiasAdd/ReadVariableOp,model_1/model/dense_1/BiasAdd/ReadVariableOp2`
.model_1/model/dense_1/BiasAdd_1/ReadVariableOp.model_1/model/dense_1/BiasAdd_1/ReadVariableOp2Z
+model_1/model/dense_1/MatMul/ReadVariableOp+model_1/model/dense_1/MatMul/ReadVariableOp2^
-model_1/model/dense_1/MatMul_1/ReadVariableOp-model_1/model/dense_1/MatMul_1/ReadVariableOp2\
,model_1/model/dense_2/BiasAdd/ReadVariableOp,model_1/model/dense_2/BiasAdd/ReadVariableOp2`
.model_1/model/dense_2/BiasAdd_1/ReadVariableOp.model_1/model/dense_2/BiasAdd_1/ReadVariableOp2Z
+model_1/model/dense_2/MatMul/ReadVariableOp+model_1/model/dense_2/MatMul/ReadVariableOp2^
-model_1/model/dense_2/MatMul_1/ReadVariableOp-model_1/model/dense_2/MatMul_1/ReadVariableOp:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_1:PL
'
_output_shapes
:?????????/
!
_user_specified_name	input_2
?
R
&__inference_dot_layer_call_fn_16994743
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dot_layer_call_and_return_conditional_losses_16994262`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?
F
*__inference_dropout_layer_call_fn_16994794

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_layer_call_and_return_conditional_losses_16993959`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?o
?
E__inference_model_1_layer_call_and_return_conditional_losses_16994637
inputs_0
inputs_1<
*model_dense_matmul_readvariableop_resource:/@9
+model_dense_biasadd_readvariableop_resource:@>
,model_dense_1_matmul_readvariableop_resource:@@;
-model_dense_1_biasadd_readvariableop_resource:@>
,model_dense_2_matmul_readvariableop_resource:@d;
-model_dense_2_biasadd_readvariableop_resource:d
identity??"model/dense/BiasAdd/ReadVariableOp?$model/dense/BiasAdd_1/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?#model/dense/MatMul_1/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?&model/dense_1/BiasAdd_1/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?%model/dense_1/MatMul_1/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?&model/dense_2/BiasAdd_1/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?%model/dense_2/MatMul_1/ReadVariableOp?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model/dense/MatMulMatMulinputs_0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@`
model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
model/dropout/dropout/MulMulmodel/dense/Relu:activations:0$model/dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@i
model/dropout/dropout/ShapeShapemodel/dense/Relu:activations:0*
T0*
_output_shapes
:?
2model/dropout/dropout/random_uniform/RandomUniformRandomUniform$model/dropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0i
$model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
"model/dropout/dropout/GreaterEqualGreaterEqual;model/dropout/dropout/random_uniform/RandomUniform:output:0-model/dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
model/dropout/dropout/CastCast&model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
model/dropout/dropout/Mul_1Mulmodel/dropout/dropout/Mul:z:0model/dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model/dense_1/MatMulMatMulmodel/dropout/dropout/Mul_1:z:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@b
model/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
model/dropout_1/dropout/MulMul model/dense_1/Relu:activations:0&model/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@m
model/dropout_1/dropout/ShapeShape model/dense_1/Relu:activations:0*
T0*
_output_shapes
:?
4model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform&model/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0k
&model/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
$model/dropout_1/dropout/GreaterEqualGreaterEqual=model/dropout_1/dropout/random_uniform/RandomUniform:output:0/model/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
model/dropout_1/dropout/CastCast(model/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
model/dropout_1/dropout/Mul_1Mulmodel/dropout_1/dropout/Mul:z:0 model/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model/dense_2/MatMulMatMul!model/dropout_1/dropout/Mul_1:z:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:/@*
dtype0?
model/dense/MatMul_1MatMulinputs_1+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@l
model/dense/Relu_1Relumodel/dense/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@b
model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
model/dropout/dropout_1/MulMul model/dense/Relu_1:activations:0&model/dropout/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????@m
model/dropout/dropout_1/ShapeShape model/dense/Relu_1:activations:0*
T0*
_output_shapes
:?
4model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform&model/dropout/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0k
&model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
$model/dropout/dropout_1/GreaterEqualGreaterEqual=model/dropout/dropout_1/random_uniform/RandomUniform:output:0/model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
model/dropout/dropout_1/CastCast(model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
model/dropout/dropout_1/Mul_1Mulmodel/dropout/dropout_1/Mul:z:0 model/dropout/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????@?
%model/dense_1/MatMul_1/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0?
model/dense_1/MatMul_1MatMul!model/dropout/dropout_1/Mul_1:z:0-model/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
&model/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/dense_1/BiasAdd_1BiasAdd model/dense_1/MatMul_1:product:0.model/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@p
model/dense_1/Relu_1Relu model/dense_1/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????@d
model/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
model/dropout_1/dropout_1/MulMul"model/dense_1/Relu_1:activations:0(model/dropout_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:?????????@q
model/dropout_1/dropout_1/ShapeShape"model/dense_1/Relu_1:activations:0*
T0*
_output_shapes
:?
6model/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform(model/dropout_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0m
(model/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
&model/dropout_1/dropout_1/GreaterEqualGreaterEqual?model/dropout_1/dropout_1/random_uniform/RandomUniform:output:01model/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@?
model/dropout_1/dropout_1/CastCast*model/dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
model/dropout_1/dropout_1/Mul_1Mul!model/dropout_1/dropout_1/Mul:z:0"model/dropout_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:?????????@?
%model/dense_2/MatMul_1/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:@d*
dtype0?
model/dense_2/MatMul_1MatMul#model/dropout_1/dropout_1/Mul_1:z:0-model/dense_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d?
&model/dense_2/BiasAdd_1/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0?
model/dense_2/BiasAdd_1BiasAdd model/dense_2/MatMul_1:product:0.model/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????ds
dot/l2_normalize/SquareSquaremodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????dh
&dot/l2_normalize/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
dot/l2_normalize/SumSumdot/l2_normalize/Square:y:0/dot/l2_normalize/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(_
dot/l2_normalize/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
dot/l2_normalize/MaximumMaximumdot/l2_normalize/Sum:output:0#dot/l2_normalize/Maximum/y:output:0*
T0*'
_output_shapes
:?????????o
dot/l2_normalize/RsqrtRsqrtdot/l2_normalize/Maximum:z:0*
T0*'
_output_shapes
:??????????
dot/l2_normalizeMulmodel/dense_2/BiasAdd:output:0dot/l2_normalize/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dw
dot/l2_normalize_1/SquareSquare model/dense_2/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????dj
(dot/l2_normalize_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
dot/l2_normalize_1/SumSumdot/l2_normalize_1/Square:y:01dot/l2_normalize_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????*
	keep_dims(a
dot/l2_normalize_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼?+?
dot/l2_normalize_1/MaximumMaximumdot/l2_normalize_1/Sum:output:0%dot/l2_normalize_1/Maximum/y:output:0*
T0*'
_output_shapes
:?????????s
dot/l2_normalize_1/RsqrtRsqrtdot/l2_normalize_1/Maximum:z:0*
T0*'
_output_shapes
:??????????
dot/l2_normalize_1Mul model/dense_2/BiasAdd_1:output:0dot/l2_normalize_1/Rsqrt:y:0*
T0*'
_output_shapes
:?????????dT
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
dot/ExpandDims
ExpandDimsdot/l2_normalize:z:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????dV
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :?
dot/ExpandDims_1
ExpandDimsdot/l2_normalize_1:z:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????d?

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????L
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
c
IdentityIdentitydot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/BiasAdd_1/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp&^model/dense_1/MatMul_1/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/BiasAdd_1/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp&^model/dense_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/BiasAdd_1/ReadVariableOp&model/dense_1/BiasAdd_1/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2N
%model/dense_1/MatMul_1/ReadVariableOp%model/dense_1/MatMul_1/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/BiasAdd_1/ReadVariableOp&model/dense_2/BiasAdd_1/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2N
%model/dense_2/MatMul_1/ReadVariableOp%model/dense_2/MatMul_1/ReadVariableOp:Q M
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/1
?
e
,__inference_dropout_1_layer_call_fn_16994846

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_dense_layer_call_fn_16994778

inputs
unknown:/@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_layer_call_and_return_conditional_losses_16993948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????/: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?	
?
*__inference_model_1_layer_call_fn_16994481
inputs_0
inputs_1
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_1_layer_call_and_return_conditional_losses_16994334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????/:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????/
"
_user_specified_name
inputs/1
?
c
E__inference_dropout_layer_call_and_return_conditional_losses_16994804

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
(__inference_model_layer_call_fn_16994671

inputs
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????/
 
_user_specified_nameinputs
?
?
(__inference_model_layer_call_fn_16994165
input_3
unknown:/@
	unknown_0:@
	unknown_1:@@
	unknown_2:@
	unknown_3:@d
	unknown_4:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_model_layer_call_and_return_conditional_losses_16994133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????/: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????/
!
_user_specified_name	input_3
?	
d
E__inference_dropout_layer_call_and_return_conditional_losses_16994080

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????/
;
input_20
serving_default_input_2:0?????????/7
dot0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ŕ
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
w__call__
*x&call_and_return_all_conditional_losses
y_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	variables
trainable_variables
regularization_losses
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_network
?
	variables
trainable_variables
regularization_losses
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	decay
learning_ratemkml mm!mn"mo#mpvqvr vs!vt"vu#vv"
	optimizer
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
w__call__
y_default_save_signature
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
,
~serving_default"
signature_map
"
_tf_keras_input_layer
?

kernel
bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-	variables
.trainable_variables
/regularization_losses
0	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
1	variables
2trainable_variables
3regularization_losses
4	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
5	variables
6trainable_variables
7regularization_losses
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
J
0
1
 2
!3
"4
#5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
:/@2dense/kernel
:@2
dense/bias
 :@@2dense_1/kernel
:@2dense_1/bias
 :@d2dense_2/kernel
:d2dense_2/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
)	variables
*trainable_variables
+regularization_losses
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
-	variables
.trainable_variables
/regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
1	variables
2trainable_variables
3regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
5	variables
6trainable_variables
7regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
9	variables
:trainable_variables
;regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	btotal
	ccount
d	variables
e	keras_api"
_tf_keras_metric
^
	ftotal
	gcount
h
_fn_kwargs
i	variables
j	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
.
b0
c1"
trackable_list_wrapper
-
d	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
f0
g1"
trackable_list_wrapper
-
i	variables"
_generic_user_object
#:!/@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@@2Adam/dense_1/kernel/m
:@2Adam/dense_1/bias/m
%:#@d2Adam/dense_2/kernel/m
:d2Adam/dense_2/bias/m
#:!/@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@@2Adam/dense_1/kernel/v
:@2Adam/dense_1/bias/v
%:#@d2Adam/dense_2/kernel/v
:d2Adam/dense_2/bias/v
?2?
*__inference_model_1_layer_call_fn_16994280
*__inference_model_1_layer_call_fn_16994463
*__inference_model_1_layer_call_fn_16994481
*__inference_model_1_layer_call_fn_16994367?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_model_1_layer_call_and_return_conditional_losses_16994545
E__inference_model_1_layer_call_and_return_conditional_losses_16994637
E__inference_model_1_layer_call_and_return_conditional_losses_16994393
E__inference_model_1_layer_call_and_return_conditional_losses_16994419?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference__wrapped_model_16993930input_1input_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_model_layer_call_fn_16994017
(__inference_model_layer_call_fn_16994654
(__inference_model_layer_call_fn_16994671
(__inference_model_layer_call_fn_16994165?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_model_layer_call_and_return_conditional_losses_16994697
C__inference_model_layer_call_and_return_conditional_losses_16994737
C__inference_model_layer_call_and_return_conditional_losses_16994186
C__inference_model_layer_call_and_return_conditional_losses_16994207?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dot_layer_call_fn_16994743?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_dot_layer_call_and_return_conditional_losses_16994769?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_16994445input_1input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_layer_call_fn_16994778?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_layer_call_and_return_conditional_losses_16994789?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dropout_layer_call_fn_16994794
*__inference_dropout_layer_call_fn_16994799?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_layer_call_and_return_conditional_losses_16994804
E__inference_dropout_layer_call_and_return_conditional_losses_16994816?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_1_layer_call_fn_16994825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_1_layer_call_and_return_conditional_losses_16994836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dropout_1_layer_call_fn_16994841
,__inference_dropout_1_layer_call_fn_16994846?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994851
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994863?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_2_layer_call_fn_16994872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_2_layer_call_and_return_conditional_losses_16994882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
#__inference__wrapped_model_16993930? !"#X?U
N?K
I?F
!?
input_1?????????/
!?
input_2?????????/
? ")?&
$
dot?
dot??????????
E__inference_dense_1_layer_call_and_return_conditional_losses_16994836\ !/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????@
? }
*__inference_dense_1_layer_call_fn_16994825O !/?,
%?"
 ?
inputs?????????@
? "??????????@?
E__inference_dense_2_layer_call_and_return_conditional_losses_16994882\"#/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????d
? }
*__inference_dense_2_layer_call_fn_16994872O"#/?,
%?"
 ?
inputs?????????@
? "??????????d?
C__inference_dense_layer_call_and_return_conditional_losses_16994789\/?,
%?"
 ?
inputs?????????/
? "%?"
?
0?????????@
? {
(__inference_dense_layer_call_fn_16994778O/?,
%?"
 ?
inputs?????????/
? "??????????@?
A__inference_dot_layer_call_and_return_conditional_losses_16994769?Z?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "%?"
?
0?????????
? ?
&__inference_dot_layer_call_fn_16994743vZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "???????????
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994851\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
G__inference_dropout_1_layer_call_and_return_conditional_losses_16994863\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? 
,__inference_dropout_1_layer_call_fn_16994841O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@
,__inference_dropout_1_layer_call_fn_16994846O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
E__inference_dropout_layer_call_and_return_conditional_losses_16994804\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
E__inference_dropout_layer_call_and_return_conditional_losses_16994816\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? }
*__inference_dropout_layer_call_fn_16994794O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@}
*__inference_dropout_layer_call_fn_16994799O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
E__inference_model_1_layer_call_and_return_conditional_losses_16994393? !"#`?]
V?S
I?F
!?
input_1?????????/
!?
input_2?????????/
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_1_layer_call_and_return_conditional_losses_16994419? !"#`?]
V?S
I?F
!?
input_1?????????/
!?
input_2?????????/
p

 
? "%?"
?
0?????????
? ?
E__inference_model_1_layer_call_and_return_conditional_losses_16994545? !"#b?_
X?U
K?H
"?
inputs/0?????????/
"?
inputs/1?????????/
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_1_layer_call_and_return_conditional_losses_16994637? !"#b?_
X?U
K?H
"?
inputs/0?????????/
"?
inputs/1?????????/
p

 
? "%?"
?
0?????????
? ?
*__inference_model_1_layer_call_fn_16994280? !"#`?]
V?S
I?F
!?
input_1?????????/
!?
input_2?????????/
p 

 
? "???????????
*__inference_model_1_layer_call_fn_16994367? !"#`?]
V?S
I?F
!?
input_1?????????/
!?
input_2?????????/
p

 
? "???????????
*__inference_model_1_layer_call_fn_16994463? !"#b?_
X?U
K?H
"?
inputs/0?????????/
"?
inputs/1?????????/
p 

 
? "???????????
*__inference_model_1_layer_call_fn_16994481? !"#b?_
X?U
K?H
"?
inputs/0?????????/
"?
inputs/1?????????/
p

 
? "???????????
C__inference_model_layer_call_and_return_conditional_losses_16994186i !"#8?5
.?+
!?
input_3?????????/
p 

 
? "%?"
?
0?????????d
? ?
C__inference_model_layer_call_and_return_conditional_losses_16994207i !"#8?5
.?+
!?
input_3?????????/
p

 
? "%?"
?
0?????????d
? ?
C__inference_model_layer_call_and_return_conditional_losses_16994697h !"#7?4
-?*
 ?
inputs?????????/
p 

 
? "%?"
?
0?????????d
? ?
C__inference_model_layer_call_and_return_conditional_losses_16994737h !"#7?4
-?*
 ?
inputs?????????/
p

 
? "%?"
?
0?????????d
? ?
(__inference_model_layer_call_fn_16994017\ !"#8?5
.?+
!?
input_3?????????/
p 

 
? "??????????d?
(__inference_model_layer_call_fn_16994165\ !"#8?5
.?+
!?
input_3?????????/
p

 
? "??????????d?
(__inference_model_layer_call_fn_16994654[ !"#7?4
-?*
 ?
inputs?????????/
p 

 
? "??????????d?
(__inference_model_layer_call_fn_16994671[ !"#7?4
-?*
 ?
inputs?????????/
p

 
? "??????????d?
&__inference_signature_wrapper_16994445? !"#i?f
? 
_?\
,
input_1!?
input_1?????????/
,
input_2!?
input_2?????????/")?&
$
dot?
dot?????????