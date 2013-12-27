// Copyright (c) 2012, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

part of google_maps;

@wrapper @forMethods abstract class OverlayView extends MVCObject {
  @generate OverlayView();

  void draw();
  GMap get map;
  MapPanes get panes;
  MapCanvasProjection get projection;
  void onAdd();
  void onRemove();
  set map(@Types(const [GMap,StreetViewPanorama]) dynamic map);

  void set_onAdd(onAdd()) { $unsafe['onAdd'] = onAdd; }
  void set_onRemove(onRemove()) { $unsafe['onRemove'] = onRemove; }
  void set_draw(draw()) { $unsafe['draw'] = draw; }
}