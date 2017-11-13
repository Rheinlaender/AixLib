within AixLib.Fluid.Actuators.Valves.ExpansionValves.ModularExpansionValves;
model ModularExpansionValves
  "Model of modular expansion valves, i.g. each valves is in front 
  of an evaporator"
  extends BaseClasses.PartialModularExpansionVavles;

equation
  // Connect ports_b with outlet ports of expansion valves
  //
  for i in 1:nVal loop
    connect(modExpVal[i].port_b, ports_b[i]);
  end for;

  annotation (Documentation(revisions="<html>
<ul>
  <li>
  October 17, 2017, by Mirko Engelpracht:<br/>
  First implementation
  (see <a href=\"https://github.com/RWTH-EBC/AixLib/issues/457\">issue 457</a>).
  </li>
</ul>
</html>", info="<html>
<p>
This is a model of modular expansion valves that are used, for example, 
in close-loop systems like heat pumps or chillers.<br />
It consists of <code>nVal</code> expansion valves in parallel and also 
<code>nVal</code> PID conrollers if no external controller is used.
</p>
<h4>Modeling approaches</h4>
<p>
This base model mainly consists of two sub-models. Therefore, please 
checkout these sub-models for further information of underlying modeling
approaches and parameterisation:
</p>
<ul>
<li>
<a href=\"modelica://AixLib.Fluid.Actuators.Valves.ExpansionValves.SimpleExpansionValves.IsothermalExpansionValve\">
AixLib.Fluid.Actuators.Valves.ExpansionValves.SimpleExpansionValves.IsothermalExpansionValve</a>.
</li>
<li>
<a href=\"modelica://AixLib.Controls.HeatPump.ModularHeatPumps.ModularExpansionValveController\">
AixLib.Controls.HeatPump.ModularHeatPumps.ModularExpansionValveController</a>.
</li>
</ul>
</html>"));
end ModularExpansionValves;